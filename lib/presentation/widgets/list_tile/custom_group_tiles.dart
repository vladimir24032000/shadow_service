import 'package:flutter/material.dart';

class CustomGroupTiles extends StatelessWidget {
  const CustomGroupTiles(
      {Key? key,
      required this.children,
      this.title,
      this.setIconIndentDivider = false})
      : super(key: key);

  final List<Widget> children;
  final String? title;
  final bool setIconIndentDivider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8),
                    child: Text(
                      title!,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: children.isEmpty
                      ? []
                      : (children
                          .expand((element) => [
                                element,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Divider(
                                      height: 1,
                                      // thickness: 5,
                                      indent: setIconIndentDivider ? 50 : 0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.5)),
                                )
                              ])
                          .toList()
                        ..removeLast()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
