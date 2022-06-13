import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior,
    this.selectionControls,
    this.onTap,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.onFieldSubmitted,
    this.validator,
    this.selectionHeightStyle,
    this.selectionWidthStyle,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.title,
    this.subtitle,
    this.subtitleBuilder,
    this.hintText,
    this.prefixIcon,
    this.labelText,
    this.initialValue,
  })  : assert(
          !(subtitle != null && subtitleBuilder != null),
          'Provide either subtitle or subtitleBuilder',
        ),
        super(key: key);

  final Widget? prefixIcon;
  final String? hintText;
  final String? labelText;
  final String? title;
  final String? subtitle;
  final WidgetBuilder? subtitleBuilder;

  final String? initialValue;

  final AutovalidateMode autovalidateMode;

  final bool readOnly;

  final FocusNode? focusNode;

  final TextEditingController? controller;

  final ValueChanged<String>? onFieldSubmitted;

  final ValueChanged<String>? onChanged;

  final FormFieldValidator<String>? validator;

  final VoidCallback? onTap;

  final TextInputType? keyboardType;

  final TextInputAction? textInputAction;

  final TextCapitalization textCapitalization;

  final TextStyle? style;

  final StrutStyle? strutStyle;

  final TextAlign textAlign;

  final TextAlignVertical? textAlignVertical;

  final TextDirection? textDirection;

  final bool autofocus;

  final String obscuringCharacter;

  final bool obscureText;

  final bool autocorrect;

  final SmartDashesType? smartDashesType;

  final SmartQuotesType? smartQuotesType;

  final bool enableSuggestions;

  final int? maxLines;

  final int? minLines;

  final bool expands;

  final ToolbarOptions? toolbarOptions;

  final bool? showCursor;

  final int? maxLength;

  final MaxLengthEnforcement? maxLengthEnforcement;

  final VoidCallback? onEditingComplete;

  final ValueChanged<String>? onSubmitted;

  final AppPrivateCommandCallback? onAppPrivateCommand;

  final List<TextInputFormatter>? inputFormatters;

  final bool? enabled;

  final double cursorWidth;

  final double? cursorHeight;

  final Radius? cursorRadius;

  final BoxHeightStyle? selectionHeightStyle;

  final BoxWidthStyle? selectionWidthStyle;

  final Brightness? keyboardAppearance;

  final EdgeInsets scrollPadding;

  final TextSelectionControls? selectionControls;

  final DragStartBehavior? dragStartBehavior;

  final MouseCursor? mouseCursor;

  final InputCounterWidgetBuilder? buildCounter;

  final ScrollPhysics? scrollPhysics;

  final ScrollController? scrollController;

  final Iterable<String>? autofillHints;

  final Clip clipBehavior;

  final String? restorationId;

  final bool enableIMEPersonalizedLearning;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  bool _hasError = false;

  bool get _hasTitle => widget.title != null;
  bool get _hasSubtitleText => widget.subtitle != null;
  bool get _hasSubtitleBuilder => widget.subtitleBuilder != null;

  bool get _hasEnhancement =>
      _hasTitle || _hasSubtitleText || _hasSubtitleBuilder;

  @override
  void initState() {
    super.initState();

    _focusNode = (widget.focusNode ?? FocusNode())..addListener(_onFocus);
    _controller = (widget.controller ??
        TextEditingController(text: widget.initialValue))
      ..addListener(_onTextController);
  }

  void _onFocus() {
    _onInteraction(enabled: _focusNode.hasFocus || _controller.text.isNotEmpty);
  }

  void _onTextController() {
    _onInteraction(enabled: _controller.text.isNotEmpty);
  }

  void _onInteraction({bool enabled = true}) {
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant AppTextFormField oldWidget) {
    _onChanged(_controller.text);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    _onChanged(_controller.text);
    super.didChangeDependencies();
  }

  void _onChanged(String value) {
    switch (widget.autovalidateMode) {
      case AutovalidateMode.onUserInteraction:
      case AutovalidateMode.always:
        final error = widget.validator?.call(value);
        setState(() {
          _hasError = error != null;
        });
        break;
      case AutovalidateMode.disabled:

      /// Don't know how to handle this case, because [AutovalidateMode.disabled] means that the validation
      /// would be called by formState.validate() and we can't directly hook into the field validation from the outside as the [FormField]
      /// manages it by itself (creating [FormState] and validate it)
      /// So I suggest to not use it at all
      default:
    }
    widget.onChanged?.call(value);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocus);
    _controller.removeListener(_onTextController);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isAndroid =
        PlatformProvider.of(context)!.platform == TargetPlatform.android;
    final decorationTheme = Theme.of(context).inputDecorationTheme;
    Widget child;
    // if (isAndroid) {
      child = PlatformTextFormField(
        material: (context, platform) => MaterialTextFormFieldData(
          restorationId: widget.restorationId,
          textDirection: widget.textDirection,
          maxLengthEnforcement: widget.maxLengthEnforcement,
          buildCounter: widget.buildCounter,
          scrollController: widget.scrollController,
          enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            hintText: isAndroid ? widget.hintText : widget.labelText,
            helperText: widget.subtitle,
            labelText: isAndroid ? widget.labelText : null,
            border: decorationTheme.border?.copyWith(
              borderSide: BorderSide.none,
            ),
            focusedBorder: decorationTheme.focusedBorder,
            fillColor: decorationTheme.fillColor,
          ),
        ),
        cupertino: (context, p) => CupertinoTextFormFieldData(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        autovalidateMode: widget.autovalidateMode,
        onChanged: _onChanged,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        style: widget.style,
        strutStyle: widget.strutStyle,
        textAlign: widget.textAlign,
        textAlignVertical: widget.textAlignVertical,
        textCapitalization: widget.textCapitalization,
        autofocus: widget.autofocus,
        toolbarOptions: widget.toolbarOptions,
        showCursor: widget.showCursor,
        obscuringCharacter: widget.obscuringCharacter,
        obscureText: widget.obscureText,
        autocorrect: widget.autocorrect,
        enableSuggestions: widget.enableSuggestions,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        expands: widget.expands,
        maxLength: widget.maxLength,
        onEditingComplete: widget.onEditingComplete,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        cursorWidth: widget.cursorWidth,
        scrollPadding: widget.scrollPadding,
        scrollPhysics: widget.scrollPhysics,
        keyboardAppearance: widget.keyboardAppearance,
        selectionControls: widget.selectionControls,
        autofillHints: widget.autofillHints,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        cursorColor: Theme.of(context).primaryColor,
        focusNode: _focusNode,
        controller: _controller,
      );
    // } else {
    //   child = CupertinoText(
    //     suffixMode: OverlayVisibilityMode.always,
    //     suffix: widget.onTap != null
    //         ? const Padding(
    //             padding: EdgeInsets.only(right: 8.0),
    //             child: Icon(
    //               CupertinoIcons.chevron_down,
    //               color: CupertinoColors.systemGrey,
    //             ),
    //           )
    //         : null,
    //     readOnly: widget.readOnly,
    //     onTap: widget.onTap,
    //     controller: _controller,
    //     decoration: BoxDecoration(
    //         color: Colors.white, borderRadius: BorderRadius.circular(8)),
    //     placeholder: widget.labelText,
    //     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    //   );
    // }
    if (!isAndroid && _hasEnhancement) {
      child = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isAndroid && _hasTitle)
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(widget.labelText!),
            ),
          child,
          if (_hasEnhancement && !_hasError)
            if (_hasSubtitleBuilder) widget.subtitleBuilder!.call(context)
        ],
      );
    }
    return child;
  }
}
