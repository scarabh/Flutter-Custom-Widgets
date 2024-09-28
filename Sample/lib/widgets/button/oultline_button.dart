import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton(
      {required this.onPressed,
      required this.buttonText,
      super.key,
      this.isExpanded = true,
      this.color,
      this.textStyle,
      this.borderColor,
      this.padding,
      this.borderRadius});

  final VoidCallback onPressed;
  final String buttonText;
  final Color? color;
  final double? borderRadius;
  final EdgeInsets? padding;
  final bool isExpanded;
  final Color? borderColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.grey),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        elevation: 0,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        minWidth: isExpanded ? double.infinity : null,
        child: Text(buttonText, style: textStyle));
  }
}
