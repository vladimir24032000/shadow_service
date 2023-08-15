import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 250,
      child: Image(image: AssetImage('assets/logo_white.png')),
    );
    // Row(
    //   mainAxisSize: MainAxisSize.min,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     GradientText(
    //       'S',
    //       style: const TextStyle(fontSize: 40),
    //       gradient: LinearGradient(colors: [
    //         Colors.white,
    //         Colors.blue.shade900,
    //       ]),
    //     ),
    //     GradientText(
    //       'H',
    //       style: const TextStyle(fontSize: 40),
    //       gradient: LinearGradient(colors: [
    //         Colors.white,
    //         Colors.blue.shade900,
    //       ]),
    //     ),
    //     GradientText(
    //       'A',
    //       style: const TextStyle(fontSize: 40),
    //       gradient: LinearGradient(colors: [
    //         Colors.white,
    //         Colors.blue.shade900,
    //       ]),
    //     ),
    //     GradientText(
    //       'D',
    //       style: const TextStyle(fontSize: 40),
    //       gradient: LinearGradient(colors: [
    //         Colors.white,
    //         Colors.blue.shade900,
    //       ]),
    //     ),
    //     GradientText(
    //       'O',
    //       style: const TextStyle(fontSize: 40),
    //       gradient: LinearGradient(colors: [
    //         Colors.white,
    //         Colors.blue.shade900,
    //       ]),
    //     ),
    //     GradientText(
    //       'W',
    //       style: const TextStyle(fontSize: 40),
    //       gradient: LinearGradient(colors: [
    //         Colors.white,
    //         Colors.blue.shade900,
    //       ]),
    //     ),
    //   ],
    // );
  }
}
