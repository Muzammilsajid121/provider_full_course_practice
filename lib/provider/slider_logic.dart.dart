import 'package:flutter/material.dart';

class SliderProviderLogic with ChangeNotifier{

  double _sliderValue = 1.0;
  double get valuess => _sliderValue;
  
  // Method to update the slider value
  void updateSliderValue(double newValue) {
    _sliderValue = newValue;
    notifyListeners(); // Notify listeners that the value has changed
  }

}