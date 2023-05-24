import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{

  var _theme= ThemeMode.light;
  ThemeMode get theme => _theme;

  void changeTheme(ThemeMode theme){
    _theme= theme;
    notifyListeners();
  }

}