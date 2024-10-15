import 'package:flutter/material.dart';
import 'package:weather_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isSelected = false;
  bool get isSelected => _isSelected;

  ThemeData _themeData = lightmood;
  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == lightmood) {
      _themeData = darkmood;
    } else {
      _themeData = lightmood;
    }

    _isSelected = !_isSelected;
    notifyListeners();
  }
}
