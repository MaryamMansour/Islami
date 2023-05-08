import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemeData{

  static const Color lightColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yelllowColor = Color(0xFFFACC1D);



  static ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,

    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      //type: BottomNavigationBarType.fixed, // here labels will be shown ومش هيكبرو و يصغرو
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    primaryColor: lightColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: lightColor,
      ),
      bodyMedium:  TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: lightColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      )
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: lightColor,
        size: 35,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    )
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkColor,// color will not change if not fixed
        type: BottomNavigationBarType.fixed, // here labels will be shown ومش هيكبرو و يصغرو
        selectedItemColor:yelllowColor,
        unselectedItemColor: Colors.white,
      ),
      primaryColor: yelllowColor,
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: yelllowColor,
          ) ,
          bodyMedium:   GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:  Colors.white,
          ),
          bodyLarge:  GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color:  Colors.white,
          size: 35,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      )
  );
}