import 'package:flutter/material.dart';

class TwitterTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue.shade300),
        elevation: 0,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.blue.shade300,
        size: 20,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 0,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade300, size: 22),
        unselectedIconTheme:
            IconThemeData(color: Colors.grey.shade400, size: 22),
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static final TEXTSTYLE_FOR_POST_HEADING = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final TEXTSTYLE_FOR_POST_CONTENT = TextStyle(
    color: Colors.grey[350],
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static final ICON_THEME = IconThemeData(
    color: Colors.blue.shade900,
    size: 20,
  );
}
