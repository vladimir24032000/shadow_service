import 'package:flutter/cupertino.dart';

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
            child: const Text("Ok"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
