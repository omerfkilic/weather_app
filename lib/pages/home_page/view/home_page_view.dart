import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/helper/my_search_delegate.dart';
import 'package:weather_app/core/constants/cities_list.dart' as cities;
import 'package:weather_app/core/model/selected_city_provider.dart';
import 'package:weather_app/pages/home_page/widgets/cities_drop_down_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => {
                    showSearch(context: context, delegate: MySearchDelegate()),
                  },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CitiesDropDownButton(),
            Consumer<SelectedCityProvider>(
                builder: (context, value, child) =>
                    Text(value.getSelectedCity())),
            ElevatedButton(
                onPressed: () {
                  print(cities.cities
                      .where((value) =>
                          value.toLowerCase().contains(''.toLowerCase()))
                      .toList());
                },
                child: Text('child'))
          ],
        ),
      ),
    );
  }
}
