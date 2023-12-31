import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future showFirmwareUploadErrorDialog(
  BuildContext context,
) {
  return showCupertinoModalPopup<int>(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: const Text("Error"),
        message: const Text(
          "Something went wrong while uploading the firmware. Do you want to restart uploading?",
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              "Yes",
            ),
            onPressed: () {
              Navigator.of(context).pop(0);
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              "No",
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
