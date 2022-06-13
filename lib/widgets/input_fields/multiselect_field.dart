import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/widgets/app_chip.dart';

import 'types.dart';

class MultiSelectField<B extends BlocBase<S>, S> extends StatefulWidget {
  const MultiSelectField({
    Key? key,
    this.buildWhen,
    required this.valueGetter,
    required this.values,
    required this.title,
    required this.onChanged,
  }) : super(key: key);

  final InitValueGetter<S, List<String>> valueGetter;
  final String title;
  final StateValueChanged<S, List<String>?> onChanged;
  final BlocBuilderCondition<S>? buildWhen;

  final List<String> values;

  @override
  State<MultiSelectField<B, S>> createState() => _MultiSelectFieldState<B, S>();
}

class _MultiSelectFieldState<B extends BlocBase<S>, S> extends State<MultiSelectField<B, S>> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(
      text: _getDisplayValue(widget.valueGetter(context.read<B>().state)),
    );
  }

  String _getDisplayValue(List<String> values) => values.join(', ');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      buildWhen: widget.buildWhen ?? (previous, current) => widget.valueGetter(previous) != widget.valueGetter(current),
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(0.0),
        child: TextFormField(
          maxLines: null,
          controller: _controller,
          readOnly: true,
          onTap: () async {
            await showModalBottomSheet<void>(
              isScrollControlled: true,
              context: get<AppRouter>().root.navigatorKey.currentContext!,
              builder: (_) => ChooseTagsSheet(
                onChanged: (v) {
                  widget.onChanged(context.read<B>().state, v);
                  _controller.text = _getDisplayValue(v ?? []);
                  // TODO: hack to rebuild widget, find a way to remove it
                  setState(() {});
                },
                values: widget.values,
                selected: widget.valueGetter(context.read<B>().state),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ChooseTagsSheet extends StatefulWidget {
  const ChooseTagsSheet({
    Key? key,
    required this.values,
    required this.selected,
    this.onChanged,
  }) : super(key: key);

  final List<String> values;
  final List<String> selected;
  final ValueChanged<List<String>?>? onChanged;

  @override
  State<ChooseTagsSheet> createState() => _ChooseTagsSheetState();
}

class _ChooseTagsSheetState extends State<ChooseTagsSheet> {
  List<String> selected = [];

  @override
  void initState() {
    super.initState();
    selected = widget.selected;
  }

  bool _isSelected(String tag) => selected.indexWhere((element) => tag == element) != -1;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      minChildSize: 0.8,
      snap: true,
      builder: (context, sc) => SingleChildScrollView(
        controller: sc,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Choose up to 3 tags'),
            ),
            ...widget.values.map(
              (e) => GestureDetector(
                onTap: () {
                  setState(() {
                    if (_isSelected(e)) {
                      selected.remove(e);
                    } else if (selected.length < 3) {
                      selected.add(e);
                    }
                    widget.onChanged?.call(selected);
                  });
                },
                child: _isSelected(e) ? AppChip.secondary(label: e) : AppChip.neutral(label: e),
              ),
            )
          ],
        ),
      ),
    );
  }
}
