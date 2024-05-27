import 'package:flutter/material.dart';

//change notifier works as a set state and it has global context 
//Also mention it in main class
class CounterProviderLogic with ChangeNotifier{

  int _counter = 0;
  int get counter => _counter;

  void incrementCounter(){
    _counter ++;
    notifyListeners();
  }

}