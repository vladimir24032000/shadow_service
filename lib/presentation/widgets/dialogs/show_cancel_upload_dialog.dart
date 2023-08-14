import 'package:flutter/cupertino.dart';

Future showFirmwareUploadCancelDialog(
  BuildContext context,
) {
  return showCupertinoModalPopup<int>(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: const Text("Warning"),
        message: const Text(
          "Do you want to cancel uploading firmware?",
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoActionSheetAction(
            child: const Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop(0);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text("No"),
            onPressed: () {
              Navigator.of(context).pop(1);
            },
          ),
        ],
      );
    },
  );
}
