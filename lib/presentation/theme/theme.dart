import 'package:flutter/material.dart';

const primaryColor = Color(0xff1160d8);
const scaffoldBackgroundColor = Color(0xff1975ff); //0xFFdff1ff
const appBarColor = Color(0xff1160d8);

ThemeData mobileThemeData() {
  const double text1Size = 12;
  const double text2Size = 13;
  const double text3Size = 17;
  const double text4Size = 17;
  const double text5Size = 21;

  const double bodySmall = text2Size;
  const double bodyMedium = text3Size;
  const double bodylarge = text4Size;

  const double labelSmall = text1Size;
  const double labelMedium = text2Size;
  const double labelLarge = text3Size; // ElevatedButton

  const double titleSmall = text3Size;
  const double titleMedium = text4Size;
  const double titleLarge = text5Size;

  final ThemeData theme = ThemeData().copyWith(
    colorScheme: ThemeData().colorScheme.copyWith(
        primary: primaryColor,
        onPrimary: const Color(0xFFdff1ff),
        onSurfaceVariant: Colors.grey[700]),
  );
  return theme.copyWith(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      useMaterial3: false,
      appBarTheme: theme.appBarTheme.copyWith(
          centerTitle: true,
          surfaceTintColor: theme.scaffoldBackgroundColor,
          backgroundColor: appBarColor,
          iconTheme: IconThemeData(color: theme.colorScheme.onPrimary),
          actionsIconTheme: IconThemeData(color: theme.colorScheme.onPrimary),
          foregroundColor: theme.colorScheme.onPrimary),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(0, 60)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              color: theme.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
              fontSize: labelLarge,
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(0, 60)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              color: scaffoldBackgroundColor,
              fontWeight: FontWeight.bold,
              fontSize: labelLarge,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return theme.colorScheme.onSurfaceVariant;
            }
            return theme.colorScheme.primary;
          }),
          overlayColor: MaterialStateProperty.all(scaffoldBackgroundColor),
          foregroundColor:
              MaterialStateProperty.all<Color>(theme.colorScheme.onPrimary),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
          textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: labelLarge,
          )),
        ),
      ),
      textTheme: theme.textTheme.copyWith(
          titleSmall: theme.textTheme.titleSmall!
              .copyWith(fontSize: titleSmall, color: const Color(0xFFdff1ff)),
          titleMedium: theme.textTheme.titleMedium!
              .copyWith(fontSize: titleMedium, color: const Color(0xFFdff1ff)),
          titleLarge: theme.textTheme.bodyLarge!
              .copyWith(fontSize: titleLarge, color: const Color(0xFFdff1ff)),
          bodySmall: theme.textTheme.bodySmall!
              .copyWith(fontSize: bodySmall, color: const Color(0xFFdff1ff)),
          bodyMedium: theme.textTheme.bodyMedium!
              .copyWith(fontSize: bodyMedium, color: const Color(0xFFdff1ff)),
          bodyLarge: theme.textTheme.bodyLarge!
              .copyWith(fontSize: bodylarge, color: const Color(0xFFdff1ff)),
          labelSmall: theme.textTheme.labelSmall!
              .copyWith(fontSize: labelSmall, color: const Color(0xFFdff1ff)),
          labelMedium: theme.textTheme.labelMedium!
              .copyWith(fontSize: labelMedium, color: const Color(0xFFdff1ff)),
          labelLarge: theme.textTheme.labelLarge!
              .copyWith(fontWeight: FontWeight.w500, color: Colors.grey[600])));
}

InputDecoration get loginInputDecorationTheme {
  return InputDecoration(
    fillColor: Colors.white24,
    filled: true,
    iconColor: primaryColor,
    prefixIconColor: primaryColor,
    suffixIconColor: primaryColor,
    errorStyle: TextStyle(color: Colors.white70),
    labelStyle: const TextStyle(
      color: primaryColor,
    ),
    constraints: const BoxConstraints(
      minHeight: 80,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      gapPadding: 10,
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
    ),
  );
}

InputDecoration get editValueInputDecorationTheme {
  return const InputDecoration(
    iconColor: primaryColor,
    prefixIconColor: primaryColor,
    suffixIconColor: primaryColor,
    labelStyle: TextStyle(
      color: Colors.black,
    ),
  );
}
