import 'package:flutter/material.dart';

void navigateTo({
  required BuildContext context,
  required Widget nextPage,
  bool newRoot = false,
}) {
  if (newRoot) {
    Navigator.of(context).popUntil((route) => route.isFirst);
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => nextPage));
  } else {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => nextPage));
  }
}
