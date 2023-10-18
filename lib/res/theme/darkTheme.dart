
import 'package:flutter/material.dart';

import '../color.dart';
import '../fonts.dart';

ThemeData darkTheme= ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  appBarTheme:  const AppBarTheme(
    color: AppColors.appbarDarkColor,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontFamily: AppFonts.sfProDisplayBold,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.secondaryTextColor,
  ),
  colorScheme: const ColorScheme.dark(
    background: AppColors.appbarDarkColor,
    primary: AppColors.primaryDarkColor,
    secondary: AppColors.secondaryDarkColor,
  ),
  textTheme: const TextTheme(

    //this is headline1 new code
    displayLarge: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 40,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline2 new code
    displayMedium: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 32,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline3 new code
    displaySmall: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline4 new code
    headlineMedium: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline5 new code
    headlineSmall: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
//this is headline6 new code
    titleLarge: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 17,
      fontWeight: FontWeight.w700,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayBold,
    ),
    //this is bodyText1 new code
    bodyLarge: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 17,
      fontWeight: FontWeight.w700,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayBold,
    ),
    //this is bodyText2 new code
    bodyMedium: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 14,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayRegular,
    ),
    //this is caption new code
    bodySmall: TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: 12,
      height: 2.26,
      fontFamily: AppFonts.sfProDisplayBold,
    ),




  ),

);