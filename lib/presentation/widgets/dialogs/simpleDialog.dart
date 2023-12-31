import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future showModalMessage(BuildContext context, String title, String message) {
  return showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: Text(title),
        message: Text(
          message,
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              "Ok",
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
