import 'dart:io';
import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';

final themeData = ThemeData(
  useMaterial3: true,
  iconTheme: IconThemeData(color: HexColors.white),
  scaffoldBackgroundColor: HexColors.black,
  primaryColor: HexColors.blue,
  focusColor: HexColors.white,
  hintColor: HexColors.grey6,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: HexColors.grey1,
  ),
  dialogBackgroundColor: HexColors.grey2,
  primaryColorDark: HexColors.grey3,
  cardColor: HexColors.grey4,
  dividerColor: HexColors.grey5,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: HexColors.white,
    selectionHandleColor: HexColors.blue,
    selectionColor: HexColors.blue,
  ),
  splashFactory: Platform.isMacOS || Platform.isIOS
      ? NoSplash.splashFactory
      : InkSparkle.splashFactory,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: HexColors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: HexColors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: HexColors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: HexColors.grey6,
    ),
  ),
);
