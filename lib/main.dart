import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/model/selected_city_provider.dart';
import 'package:weather_app/pages/home_page/view/home_page_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SelectedCityProvider())
      ],
      child: const MaterialApp(
        title: 'Weather App',
        home: HomePage(),
      ),
    );
  }
}
