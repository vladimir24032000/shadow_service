import 'package:flutter/material.dart';
import 'package:service_app/presentation/widgets/logo_widget/gradient_text.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GradientText(
          'S',
          style: const TextStyle(fontSize: 40),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blue.shade900,
          ]),
        ),
        GradientText(
          'H',
          style: const TextStyle(fontSize: 40),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blue.shade900,
          ]),
        ),
        GradientText(
          'A',
          style: const TextStyle(fontSize: 40),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blue.shade900,
          ]),
        ),
        GradientText(
          'D',
          style: const TextStyle(fontSize: 40),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blue.shade900,
          ]),
        ),
        GradientText(
          'O',
          style: const TextStyle(fontSize: 40),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blue.shade900,
          ]),
        ),
        GradientText(
          'W',
          style: const TextStyle(fontSize: 40),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blue.shade900,
          ]),
        ),
      ],
    );
  }
}
