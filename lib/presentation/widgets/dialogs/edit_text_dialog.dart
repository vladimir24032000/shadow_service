import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/presentation/theme/theme.dart';

Future<String?> showEditDialog(
  BuildContext context,
  String title,
  String defaultValue,
) {
  final controller = TextEditingController(text: defaultValue);
  return showCupertinoDialog<String>(
    context: context,
    builder: (context) {
      return WillPopScope(
          child: Dialog(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Text(
                        "Update $title information",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        decoration: loginInputDecorationTheme,
                        controller: controller,
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            if (controller.text.isNotEmpty) {
                              Navigator.of(context).pop(controller.text);
                            }
                          },
                          child: Text(
                            "Apply",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            if (controller.text.isNotEmpty) {
                              Navigator.of(context).pop(null);
                            }
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
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
