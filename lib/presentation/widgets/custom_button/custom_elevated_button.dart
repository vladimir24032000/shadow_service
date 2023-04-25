import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final ButtonStyle? style;

  const CustomElevatedButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed == null
          ? null
          : () {
              HapticFeedback.selectionClick();
              onPressed!();
            },
      style: style,
      child: child,
    );
  }
}
