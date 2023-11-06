import 'package:flutter/material.dart';
import 'package:news_app/shared/styles/colors.dart';
import 'package:news_app/shared/styles/text_styles.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.backgroundLight,
    textTheme: TextTheme(
      bodySmall: AppTextStyleDarkTheme.bodySmall,
      bodyMedium: AppTextStyleDarkTheme.bodyMedium,
      bodyLarge: AppTextStyleDarkTheme.bodyLarage,
      headlineMedium: AppTextStyleLightTheme.headLineMeduim,
      headlineLarge: AppTextStyleLightTheme.headLineLarge,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: MyColors.whiteColor,
      selectedItemColor: MyColors.primaryColor,
      unselectedItemColor: MyColors.unselectedItem,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.backgroundDark,
    textTheme: TextTheme(
      bodySmall: AppTextStyleDarkTheme.bodySmall,
      bodyMedium: AppTextStyleDarkTheme.bodyMedium,
      bodyLarge: AppTextStyleDarkTheme.bodyLarage,
      headlineMedium: AppTextStyleLightTheme.headLineMeduim,
      headlineLarge: AppTextStyleLightTheme.headLineLarge,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: MyColors.onbackgroundDark,
      selectedItemColor: MyColors.primaryColor,
      unselectedItemColor: MyColors.unselectedItem,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
