import 'package:flutter/material.dart';
import 'package:service_app/core/globals.dart';

void showSnackBar(
  BuildContext context,
  String text, {
  Duration duration = const Duration(seconds: 2),
}) {
  Globals.scaffoldMessengerKey.currentState
    ?..clearSnackBars()
    ..showSnackBar(
      SnackBar(
        content: Text(text),
        duration: duration,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
}
