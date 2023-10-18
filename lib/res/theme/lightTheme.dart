
import 'package:flutter/material.dart';

import '../color.dart';
import '../fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,

  useMaterial3: true,

  colorScheme: const ColorScheme.light(
    background: AppColors.tdBGColor,
    primary: AppColors.primaryMaterialColor,
    secondary: AppColors.secondaryColor,
  ),

  appBarTheme: const AppBarTheme(
    color: AppColors.tdBGColor,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontFamily: AppFonts.sfProDisplayBold,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.primaryTextTextColor,
  ),
  textTheme: const TextTheme(

    //this is headline1 new code
    displayLarge: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 40,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline2 new code
    displayMedium: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 32,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline3 new code
    displaySmall: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline4 new code
    headlineMedium: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
    //this is headline5 new code
    headlineSmall: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayMedium,
    ),
//this is headline6 new code
    titleLarge: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 17,
      fontWeight: FontWeight.w700,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayBold,
    ),
    //this is bodyText1 new code
    bodyLarge: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 17,
      fontWeight: FontWeight.w700,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayBold,
    ),
    //this is bodyText2 new code
    bodyMedium: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 14,
      height: 1.6,
      fontFamily: AppFonts.sfProDisplayRegular,
    ),
    //this is caption new code
    bodySmall: TextStyle(
      color: AppColors.primaryTextTextColor,
      fontSize: 12,
      height: 2.26,
      fontFamily: AppFonts.sfProDisplayBold,
    ),




  ),

);