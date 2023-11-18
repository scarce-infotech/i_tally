import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); // This is a private constructor for this utility class.

  // Define the colors you see in your logo and want to use in your app
  static const Color primaryColor = Color(0xFFE53935); // Placeholder color
  static const Color secondaryColor = Color(0xFF1E88E5); // Placeholder color
  static const Color accentColor = Color(0xFFFFC107); // Placeholder color
  static const Color backgroundColor = Color(0xFFFFFFFF); // White
  static const Color textColor = Color(0xFF212121); // Almost black

  // Define the default font family
  static const String defaultFontFamily = 'Roboto'; // Placeholder font

  // The light theme configuration
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      iconTheme: IconThemeData(color: backgroundColor),
    ),
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      onPrimary: backgroundColor,
      onSecondary: textColor,
    ),
    iconTheme: IconThemeData(
      color: accentColor,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: defaultFontFamily, color: textColor),
      bodyText1: TextStyle(fontSize: 14, fontFamily: defaultFontFamily, color: textColor),
      // Add other text styles as needed
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    // Define other theme properties as needed
  );

  // The dark theme configuration (if your app will have a dark mode)
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF303030), // Dark grey
    appBarTheme: AppBarTheme(
      color: Color(0xFF424242), // Lighter dark grey
      iconTheme: IconThemeData(color: backgroundColor),
    ),
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      onPrimary: backgroundColor,
      onSecondary: textColor,
    ),
    iconTheme: IconThemeData(
      color: accentColor,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: defaultFontFamily, color: backgroundColor),
      bodyText1: TextStyle(fontSize: 14, fontFamily: defaultFontFamily, color: backgroundColor),
      // Add other text styles as needed
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    // Define other theme properties as needed
  );
}
