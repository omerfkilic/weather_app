import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/cities_list.dart' as cities;

class SelectedCityProvider extends ChangeNotifier {
  String _selectedCity = cities.cities.first;

  String getSelectedCity() => _selectedCity;

  void changeSelectedCity(String selectedCity) {
    _selectedCity = selectedCity;
    notifyListeners();
  }
}
