import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static Color blackColor = const Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.elMessiri(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        bodyLarge: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor,size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.elMessiri(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        bodyLarge: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor,size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: primaryColor,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white));
}
