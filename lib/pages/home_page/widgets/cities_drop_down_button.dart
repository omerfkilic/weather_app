import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/constants/cities_list.dart' as cities;
import 'package:weather_app/core/model/selected_city_provider.dart';

class CitiesDropDownButton extends StatefulWidget {
  const CitiesDropDownButton({Key? key}) : super(key: key);

  @override
  State<CitiesDropDownButton> createState() => _CitiesDropDownButtonState();
}

class _CitiesDropDownButtonState extends State<CitiesDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedCityProvider>(
      builder: (context, provider, child) => DropdownButton(
          value: provider.getSelectedCity(),
          items: cities.cities
              .map((String city) =>
                  DropdownMenuItem(value: city, child: Text(city)))
              .toList(),
          onChanged: (String? newCity) {
            provider.changeSelectedCity(newCity!);
          }),
    );
  }
}
