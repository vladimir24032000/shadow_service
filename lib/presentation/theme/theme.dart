import 'package:flutter/material.dart';

const primaryColor = Color(0xffe7e4e5);
const scaffoldBackgroundColor = Color(0xFFf2f1f1);
const appBarColor = Color(0xffe7e4e5);

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
        onPrimary: const Color(0xFF2c2c71),
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
              color: theme.colorScheme.onPrimary,
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
          overlayColor: MaterialStateProperty.all(Colors.black12),
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
              .copyWith(fontSize: titleSmall, color: Colors.black),
          titleMedium: theme.textTheme.titleMedium!
              .copyWith(fontSize: titleMedium, color: Colors.black),
          titleLarge: theme.textTheme.bodyLarge!
              .copyWith(fontSize: titleLarge, color: Colors.black),
          bodySmall: theme.textTheme.bodySmall!
              .copyWith(fontSize: bodySmall, color: Colors.black),
          bodyMedium: theme.textTheme.bodyMedium!
              .copyWith(fontSize: bodyMedium, color: Colors.black),
          bodyLarge: theme.textTheme.bodyLarge!
              .copyWith(fontSize: bodylarge, color: Colors.black),
          labelSmall: theme.textTheme.labelSmall!
              .copyWith(fontSize: labelSmall, color: Colors.black),
          labelMedium: theme.textTheme.labelMedium!
              .copyWith(fontSize: labelMedium, color: Colors.black),
          labelLarge: theme.textTheme.labelLarge!
              .copyWith(fontWeight: FontWeight.w500, color: Colors.grey[600])));
}

InputDecoration get loginInputDecorationTheme {
  return InputDecoration(
    fillColor: Colors.grey[200],
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
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      gapPadding: 10,
      borderSide: const BorderSide(width: 3, color: primaryColor),
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
