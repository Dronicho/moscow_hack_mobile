import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

typedef ToStringCallback<T> = String Function(T);

class AppDropdownButton<T extends Object> extends StatefulWidget {
  const AppDropdownButton({
    Key? key,
    this.title,
    this.subtitle,
    required this.items,
    required this.onChanged,
    this.displayStringForOption,
    this.initialValue,
  })  : assert(items.length > 0, 'value cannot be empty'),
        super(key: key);

  final String? title;
  final String? subtitle;
  final List<T> items;
  final T? initialValue;
  final ValueChanged<T?> onChanged;
  final ToStringCallback<T>? displayStringForOption;

  @override
  State<AppDropdownButton<T>> createState() => _AppDropdownButtonState<T>();
}

class _AppDropdownButtonState<T extends Object>
    extends State<AppDropdownButton<T>> {
  late T _value;

  @override
  void initState() {
    super.initState();

    _value = widget.initialValue ?? widget.items[0];
  }

  String _displayStringForOption(T value) {
    if (widget.displayStringForOption != null) {
      return widget.displayStringForOption!(value);
    }
    return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Padding(
            padding:
                EdgeInsets.only(left: context.isAndroid ? 12 : 0, bottom: 8.0),
            child: Text(widget.title!),
          ),
        GestureDetector(
          onTap: () {
            if (context.isIOS) {
              showCupertinoModalPopup<void>(
                semanticsDismissible: true,
                context: context,
                builder: (_) => SizedBox(
                  height: 300,
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                      initialItem: widget.items.indexOf(_value),
                    ),
                    backgroundColor: context.theme.canvasColor,
                    itemExtent: 50,
                    onSelectedItemChanged: (item) {
                      final value = widget.items[item];
                      widget.onChanged(value);
                      setState(() {
                        _value = value;
                      });
                    },
                    children: [
                      ...widget.items
                          .map(
                            (e) => Center(
                              child: Text(
                                _displayStringForOption(e),
                                style: context.textTheme.bodyLarge,
                              ),
                            ),
                          )
                          .toList()
                    ],
                  ),
                ),
              );
            }
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: context.theme.inputDecorationTheme.fillColor,
              // border: Border.all(width: 1, color: Colors.black45),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 4.0,
              ),
              child: _buildPicker(context),
            ),
          ),
        ),
        if (widget.subtitle != null)
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 8.0),
            child: Text(widget.subtitle!, style: context.theme.textTheme.labelLarge),
          )
      ],
    );
  }

  Widget _buildPicker(BuildContext context) {
    if (context.isIOS) {
      return _buildCupertinoPicker(context);
    } else {
      return _buildMaterialPicker(context);
    }
  }

  Widget _buildCupertinoPicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _displayStringForOption(_value),
            style: context.theme.inputDecorationTheme.hintStyle,
          ),
          const Icon(Icons.expand_more)
        ],
      ),
    );
  }

  Widget _buildMaterialPicker(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<T>(
        style: context.theme.inputDecorationTheme.hintStyle,
        elevation: 2,
        borderRadius: BorderRadius.circular(16),
        value: _value,
        onChanged: (value) {
          widget.onChanged.call(value);
          if (value != null) {
            setState(() {
              _value = value;
            });
          }
        },
        dropdownColor: context.theme.canvasColor,
        items: widget.items
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  _displayStringForOption(e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
