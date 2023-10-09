import 'package:flutter/material.dart';
class MyTheme {
  static const primaryColorDark=Color(0xFF141A2E);
  static const darkPrimary=Color(0xFFFACC1D);
  static const lightPrimary= Color(0xFFB7935F);
  static const dark= Colors.white;
  static const white= Colors.black;
  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor:Color(0xFF707070),
    primaryColor: lightPrimary,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black
    ),
  centerTitle: true,
  titleTextStyle: TextStyle(
  color: Colors.white,
  fontSize: 24
  ),
  backgroundColor: Colors.transparent ,
  elevation: 0,),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color(0xffB7935F),
    selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32
    ),
    selectedItemColor: Colors.black,
    unselectedIconTheme:
    IconThemeData(
        color: Colors.white,
        size: 30
    ),
    unselectedItemColor:Colors.white ,
  ),
    textTheme:TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.black
      ),
    )
  );
  static ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor:primaryColorDark ,
      primaryColor: darkPrimary,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24
        ),
        backgroundColor: Colors.transparent ,
        elevation: 0,),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColorDark,
        selectedIconTheme: IconThemeData(
            color: darkPrimary,
            size: 32
        ),
        selectedItemColor: darkPrimary,
        unselectedIconTheme:
        IconThemeData(
            color: Colors.white,
            size: 30
        ),
        unselectedItemColor:Colors.white ,
      ),
      textTheme:TextTheme(
        bodyLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodySmall: TextStyle(
            fontSize: 20,
            color: Colors.white
        ),
      )
  );
}