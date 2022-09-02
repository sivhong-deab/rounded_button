library rounded_button;

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final VoidCallback onTap;
  final Border? borderStyle;
  final BorderRadius? borderRadius;
  final EdgeInsets padding;
  const RoundedButton({
    required this.onTap,
    required this.child,
    this.borderStyle,
    this.borderRadius,
    this.padding = const EdgeInsets.all(10.0),
    this.backgroundColor = Colors.blueAccent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: borderRadius ?? BorderRadius.circular(15.0),
        onTap: onTap,
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: borderStyle,
            borderRadius: borderRadius ?? BorderRadius.circular(15.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
