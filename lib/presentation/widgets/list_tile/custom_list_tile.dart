import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomListTile extends StatelessWidget {
  final Widget title;
  final Widget? subtitle;
  final IconData? leadingIcon;
  final Widget? progressIndicator;
  final Color? leadingIconColor;
  final String? leadingText;
  final Widget? trailingInput;
  final String? trailingValue;
  final Color? selectedTileColor;
  final bool dense;
  final bool showArrow;
  final Function()? onPressed;
  final double? height;

  ///
  /// This widget is used to display a list tile with multiple custom parameters.
  ///
  /// Requires a [title] to be displayed.
  ///
  /// [subtitle] is optional for extra information to be displayed.
  ///
  /// You can set [leadingIcon] or [leadingText] to show before [title].
  ///
  /// Default color for leading icon is [ColorScheme.primary] but you can set your own
  /// [leadingIconColor]
  ///
  /// If you want to set a [Function] to be executed when the list tile is tapped,
  /// you can set [onPressed] variable.
  /// Don't forget to set [showArrow] to true, to indicate that user can click on it.
  ///
  /// Usually, you want to set [showArrow] to true, and pass a [String] to [trailingValue]
  ///
  /// Alternatively, you can set [trailingInput] to display a custom widget on the right side.
  ///
  /// If you want to squeeze the tile, you can use [dense] and set it to true.
  /// It would be better not to use [showArrow] and [trainlingValue] or [trailingInput] while [dense] is true.
  const CustomListTile(
      {Key? key,
      required this.title,
      this.subtitle,
      this.leadingText,
      this.leadingIcon,
      this.progressIndicator,
      this.leadingIconColor,
      this.trailingValue,
      this.showArrow = false,
      this.selectedTileColor,
      this.dense = false,
      this.onPressed,
      this.trailingInput,
      this.height})
      : assert(trailingInput == null || trailingValue == null,
            "You can't use both trailingInput and trailingValue"),
        assert(leadingIcon == null || leadingText == null,
            "You can't use both leadingText and leadingIcon"),
        assert(trailingInput == null || showArrow == false,
            "You can't use both trailingInput and showArrow"),
        assert(trailingInput == null || onPressed == null,
            "You can't use both trailingInput and onPressed"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: height,
      child: Align(
        alignment: Alignment.center,
        child: Material(
          child: ListTile(
            tileColor: theme.appBarTheme.backgroundColor,
            onTap: onPressed == null
                ? null
                : () {
                    HapticFeedback.selectionClick();
                    onPressed!();
                  },
            title: title,
            subtitle: subtitle,
            minLeadingWidth: 20,
            leading: leadingIcon == null && leadingText == null
                ? null
                : Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: leadingIconColor ??
                            Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(8)),
                    child: leadingText != null
                        ? FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                leadingText!,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        : progressIndicator ??
                            Icon(leadingIcon as IconData,
                                color: Colors.white, size: 32)),
            trailing: dense
                ? null
                : trailingInput ??
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          trailingValue ?? "",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      showArrow
                          ? Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white70,
                            )
                          : Container(),
                    ]),
          ),
        ),
      ),
    );
  }
}
