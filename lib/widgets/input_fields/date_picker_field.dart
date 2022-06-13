import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:intl/intl.dart';
import 'package:moscow_hack/utils/layout.dart';

import 'types.dart';

class DatePickerField<B extends BlocBase<S>, S> extends StatefulWidget {
  const DatePickerField({
    Key? key,
    this.buildWhen,
    required this.valueGetter,
    required this.title,
    this.validator,
    required this.onChanged,
    this.initialDateGetter,
    this.startDateGetter,
  }) : super(key: key);

  final InitValueGetter<S, DateTime> valueGetter;
  final String title;
  final StateValueChanged<S, DateTime> onChanged;
  final BlocBuilderCondition<S>? buildWhen;
  final FormFieldValidator<String>? validator;

  final InitValueGetter<S, DateTime?>? initialDateGetter;
  final InitValueGetter<S, DateTime?>? startDateGetter;

  @override
  State<DatePickerField<B, S>> createState() => _DatePickerFieldState<B, S>();
}

class _DatePickerFieldState<B extends BlocBase<S>, S> extends State<DatePickerField<B, S>> {
  late final DateFormat _format;
  late DateTime _date;
  late TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _format = AppLayout.dateTimeFormat;
    _date = widget.valueGetter(context.read<B>().state);
    _controller = TextEditingController(text: _format.format(_date));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      buildWhen: widget.buildWhen ?? (previous, current) => widget.valueGetter(previous) != widget.valueGetter(current),
      builder: (context, state) => GestureDetector(
        onTap: () async {
          final res = await showPlatformDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 1000)),
            lastDate: DateTime.now().add(const Duration(days: 1000)),
          );
          if (res != null) {
            widget.onChanged(context.read<B>().state, res);
            setState(() {
              _date = res;
            });
            _controller.text = _format.format(res);
          }
        },
        child: TextFormField(
          decoration: InputDecoration(labelText: widget.title),
          controller: _controller,
          readOnly: true,
          onTap: () async {
            final res = await showPlatformDatePicker(
              context: context,
              initialDate: widget.initialDateGetter?.call(state) ?? DateTime.now(),
              firstDate: widget.startDateGetter?.call(state) ??
                  widget.initialDateGetter?.call(state) ??
                  DateTime.now().subtract(const Duration(days: 1000)),
              lastDate: DateTime.now().add(const Duration(days: 1000)),
            );
            if (res != null) {
              widget.onChanged(context.read<B>().state, res);
              setState(() {
                _date = res;
              });
              _controller.text = _format.format(res);
            }
          },
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 16.0),
        //       child: Text(widget.title),
        //     ),
        //     const SizedBox(
        //       height: 5,
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         _buildBubble(
        //           _date.day.toString(),
        //           constraints: const BoxConstraints(minWidth: 64),
        //         ),
        //         _buildBubble(
        //           _format.format(_date),
        //           constraints: const BoxConstraints(minWidth: 120),
        //         ),
        //         _buildBubble(
        //           _date.year.toString(),
        //           constraints: const BoxConstraints(minWidth: 64),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }

  // Widget _buildBubble(String text, {BoxConstraints? constraints}) {
  //   return Container(
  //     constraints: constraints,
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(16),
  //     ),
  //     child: Material(
  //       type: MaterialType.transparency,
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
  //         child: Center(child: Text(text)),
  //       ),
  //     ),
  //   );
  // }
}
