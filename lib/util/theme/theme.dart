import 'package:ecommerce_app/util/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce_app/util/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_app/util/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_app/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_app/util/theme/custom_theme/outlined_button_theme.dart';
import 'package:ecommerce_app/util/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce_app/util/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_theme/bottom_sheet_theme.dart';

class AppTheme {
  AppTheme._(); //private constructor call everywhere

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.LightAppBarThere,
    bottomSheetTheme: TBottomSheetTheme.lightBottonSheetTheme,
    checkboxTheme: TCheckboxTheme.LightCheckboxTheme,
    chipTheme: TChipTheme.LightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.dorkApp8arTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottonSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.dorkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
