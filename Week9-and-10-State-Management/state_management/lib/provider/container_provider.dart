import 'package:flutter/foundation.dart';

class ContainerProvider with ChangeNotifier{
  double _value=0;
  double get value => _value;
double _value2=1;
  double get value2 => _value2;
  void setValue(double val){
    _value=val;
    notifyListeners();
  }
 void setValue2(double val){
    _value2=1-val;
    notifyListeners();
  }

}