import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/widgets/input_fields_ui/dropdown.dart';

import 'types.dart';

class DropdownField<B extends BlocBase<S>, S> extends StatefulWidget {
  const DropdownField({
    Key? key,
    this.buildWhen,
    required this.valueGetter,
    required this.values,
    required this.title,
    required this.onChanged,
  }) : super(key: key);

  final InitValueGetter<S, String> valueGetter;
  final String title;
  final StateValueChanged<S, String?> onChanged;
  final BlocBuilderCondition<S>? buildWhen;

  final List<String> values;

  @override
  State<DropdownField<B, S>> createState() => _DropdownFieldState<B, S>();
}

class _DropdownFieldState<B extends BlocBase<S>, S>
    extends State<DropdownField<B, S>> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      buildWhen: widget.buildWhen ??
          (previous, current) =>
              widget.valueGetter(previous) != widget.valueGetter(current),
      builder: (context, state) => AppDropdownButton<String>(
        initialValue: widget.valueGetter(state),
        title: widget.title,
        items: widget.values,
        onChanged: (value) {
          widget.onChanged(context.read<B>().state, value);
        },
      ),
    );
  }
}
