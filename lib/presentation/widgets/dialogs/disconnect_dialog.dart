import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future showDisconnectDialog(
  BuildContext context,
) {
  return showCupertinoModalPopup<int>(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: const Text("Info"),
        message: const Text(
          "Are you sure you want to disconnect the device?",
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              "OK",
            ),
            onPressed: () {
              Navigator.of(context).pop(0);
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              "Cancel",
            ),
            onPressed: () {
              Navigator.of(context).pop(1);
            },
          ),
        ],
      );
    },
  );
}
