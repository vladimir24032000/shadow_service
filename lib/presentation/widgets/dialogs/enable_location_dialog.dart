import 'package:flutter/cupertino.dart';

Future<bool?> enableLocationDialog(BuildContext context) {
  return showCupertinoModalPopup<bool>(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: const Text("Warning"),
        message: const Text(
          "Enable Location?\nIf Location is disabled, you will can not connect any device.",
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoActionSheetAction(
            child: const Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text("No"),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
}
