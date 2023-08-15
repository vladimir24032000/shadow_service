import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool?> enableBluetoothDialog(BuildContext context) {
  return showCupertinoModalPopup<bool>(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: const Text("Warning"),
        message: const Text(
          "Enable Bluetooth?\nIf Bluetooth is disabled, you will can not connect any device.",
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              "Yes",
            ),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              "No",
            ),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
}
