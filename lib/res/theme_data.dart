import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      selectedRowColor: AppColors.columnbackgroundcolorlight,
      primaryColor: AppColors.primaryShimmerLightColor,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appbartitlecolordark,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      selectedRowColor: AppColors.columnbackgroundcolordark,
      primaryColor: AppColors.secondaryShimmerDarkColor,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appbartitlecolorlight,
      ),
    );
  }
}
