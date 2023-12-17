import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/shared/styles/colors.dart';
import 'package:news_app/shared/styles/text_styles.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTextStyleLightTheme.bodyMedium.copyWith(
        fontFamily: GoogleFonts.exo.toString(),
        fontSize: 22.0,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteColor,
      ),
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
      iconTheme: IconThemeData(
        color: AppColors.whiteColor,
      ),
    ),
    scaffoldBackgroundColor: AppColors.transparentColor,
    textTheme: TextTheme(
      bodySmall: AppTextStyleLightTheme.bodySmall,
      bodyMedium: AppTextStyleLightTheme.bodyMedium,
      bodyLarge: AppTextStyleLightTheme.bodyLarage,
      headlineMedium: AppTextStyleLightTheme.headLineMeduim,
      headlineLarge: AppTextStyleLightTheme.headLineLarge,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.unselectedItem,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: TextTheme(
      bodySmall: AppTextStyleDarkTheme.bodySmall,
      bodyMedium: AppTextStyleDarkTheme.bodyMedium,
      bodyLarge: AppTextStyleDarkTheme.bodyLarage,
      headlineMedium: AppTextStyleLightTheme.headLineMeduim,
      headlineLarge: AppTextStyleLightTheme.headLineLarge,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.onbackgroundDark,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.unselectedItem,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
