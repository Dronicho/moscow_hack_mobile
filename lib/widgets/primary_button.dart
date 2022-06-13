import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';

typedef PrimaryButtonCallback = FutureOr<void> Function();

class PrimaryButton extends StatefulWidget {
  static const _defaultPadding = EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0);

  final PrimaryButtonCallback? onPressed;
  final VoidCallback? onSuccess;
  final VoidCallback? onError;
  final Color? color;
  final Widget child;
  final ButtonType variant;
  final bool detectLoading;
  final EdgeInsets margin;
  final Color? onPrimary;
  final double? height;
  final double? width;

  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.color,
    this.onSuccess,
    this.onError,
    this.detectLoading = true,
    this.margin = _defaultPadding,
    this.variant = ButtonType.primary,
    this.onPrimary,
    this.height,
    this.width,
  }) : super(key: key);

  const PrimaryButton.error({
    Key? key,
    this.onPressed,
    required this.child,
    this.onSuccess,
    this.onError,
    this.margin = _defaultPadding,
    this.color,
    this.detectLoading = true,
    this.onPrimary,
    this.height,
    this.width,
  })  : variant = ButtonType.error,
        super(key: key);

  const PrimaryButton.outlined({
    Key? key,
    this.onPressed,
    required this.child,
    this.onSuccess,
    this.onError,
    this.margin = _defaultPadding,
    this.color,
    this.detectLoading = true,
    this.onPrimary,
    this.height,
    this.width,
  })  : variant = ButtonType.outlined,
        super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  late bool _loading;
  late bool _disabeld;
  Border? border;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _disabeld = widget.onPressed == null;
  }

  @override
  void didUpdateWidget(covariant PrimaryButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _disabeld = widget.onPressed == null;
  }

  VoidCallback? _getOnPressed() {
    if (_disabeld) {
      return null;
    }
    return () async {
      setState(() {
        _loading = true;
      });
      try {
        await widget.onPressed?.call();
        widget.onSuccess?.call();
      } catch (e) {
        widget.onError?.call();
      } finally {
        setState(() {
          _loading = false;
        });
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Container();

    // migrated buttons to material 3 desing
    final defaultStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
      splashFactory: context.theme.splashFactory,
      shadowColor: Colors.transparent,
      primary: widget.color ?? context.theme.colorScheme.secondaryContainer,
      onPrimary: widget.onPrimary ?? AppColors.black,
      minimumSize: Size(widget.width ?? context.mediaQuerySize.width, widget.height ?? 50),
    );
    switch (widget.variant) {
      case ButtonType.primary:
        result = ElevatedButton(
          onPressed: _getOnPressed(),
          style: defaultStyle,
          child: child,
        );
        break;
      case ButtonType.outlined:
        result = OutlinedButton(
          onPressed: _getOnPressed(),
          style: OutlinedButton.styleFrom(
                  primary: AppColors.black,
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(color: AppColors.black, width: 1))
              .merge(defaultStyle),
          child: child,
        );
        break;
      case ButtonType.error:
        result = ElevatedButton(
          onPressed: _getOnPressed(),
          style: ElevatedButton.styleFrom(
                  primary: AppColors.red,
                  onPrimary: AppColors.white,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold))
              .merge(defaultStyle),
          child: child,
        );
        break;
    }
    return DefaultTextStyle(
      style: const TextStyle(fontWeight: FontWeight.bold),
      child: Padding(
        padding: widget.margin,
        child: result,
      ),
    );
  }

  bool get _isOutlined => widget.variant == ButtonType.outlined;

  Widget get child => AnimatedSwitcher(
        duration: AppLayout.defaultDuration,
        child: _loading
            ? SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: _isOutlined ? context.primaryColor : AppColors.white,
                  strokeWidth: 2,
                ),
              )
            : widget.child,
      );
}

enum ButtonType { outlined, error, primary }

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.color,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Widget button = Center(
      child: DefaultTextStyle(
        style: const TextStyle(color: Color(0xFF333333), fontSize: 14, fontWeight: FontWeight.bold),
        child: child,
      ),
    );
    button = InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onPressed,
      child: button,
    );

    Widget res = Container(
      decoration: BoxDecoration(
        color: color ?? const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 50,
        child: Material(
          type: MaterialType.transparency,
          child: button,
        ),
      ),
    );

    return res;
  }
}
