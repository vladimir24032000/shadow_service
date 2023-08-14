import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool?> showUploadingDialog(
  BuildContext context,
  ValueNotifier<double> progressNotifier,
  StreamController<bool> cancelStream,
) {
  return showCupertinoDialog<bool>(
    context: context,
    builder: (context) {
      return WillPopScope(
          child: Dialog(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Text(
                    "Uploading firmware in progress",
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 20,
                ),
                ValueListenableBuilder<double>(
                  valueListenable: progressNotifier,
                  builder: (context, value, child) => _UploadProgressIndicator(
                    progress: value,
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 20,
                ),
                CupertinoActionSheetAction(
                    onPressed: () {
                      cancelStream.add(true);
                    },
                    child: Text("Cancel")),
              ],
            ),
          ),
          onWillPop: () async => false);
    },
  );
}

class _UploadProgressIndicator extends StatelessWidget {
  const _UploadProgressIndicator({
    required this.progress,
  });
  final double? progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
      child: LinearProgressIndicator(
        color: Colors.white70,
        value: progress,
      ),
    );
  }
}
