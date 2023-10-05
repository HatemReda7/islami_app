import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static Color blackColor = const Color(0xFF242424);
  static Color darkPrimaryColor = const Color(0xFF141A2E);
  static Color darkSecondaryColor = const Color(0xFFFACC1D);
  static Color darkWhiteColor = const Color(0xFFF8F8F8);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      secondaryHeaderColor: blackColor,
      cardColor: blackColor,
      indicatorColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 25, fontWeight: FontWeight.w600),
        bodyLarge: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor, size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      secondaryHeaderColor: darkSecondaryColor,
      cardColor: darkWhiteColor,
      indicatorColor: darkSecondaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: darkWhiteColor, fontSize: 20, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.elMessiri(
            color: darkWhiteColor, fontSize: 25, fontWeight: FontWeight.w600),
        bodyLarge: GoogleFonts.elMessiri(
            color: darkWhiteColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: darkWhiteColor, size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: primaryColor,
          selectedItemColor: darkSecondaryColor,
          unselectedItemColor: darkWhiteColor));
}

//colorScheme: ColorScheme(
//           brightness: Brightness.dark,
//           primary: darkPrimaryColor,
//           onPrimary: darkSecondaryColor,
//           secondary: darkSecondaryColor,
//           onSecondary: darkPrimaryColor,
//           error: darkWhiteColor,
//           onError: darkWhiteColor,
//           background: darkPrimaryColor,
//           onBackground: darkWhiteColor,
//           surface: darkSecondaryColor,
//           onSurface: darkPrimaryColor
//       ),
