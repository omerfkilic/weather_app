import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/constants/cities_list.dart' as cities;
import 'package:weather_app/core/model/selected_city_provider.dart';

class MySearchDelegate extends SearchDelegate {
  MySearchDelegate();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(onPressed: () => {query = ''}, icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => {
              if (query.isEmpty) {close(context, null)} else {query = ''}
            },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, null);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> list = searchInCitiesList();
    return Consumer<SelectedCityProvider>(
      builder: (context, provider, child) => ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final suggestion = list[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              provider.changeSelectedCity(suggestion);
              //query = suggestion;
              print(suggestion);
              close(context, null);
            },
          );
        },
      ),
    );
  }

  List<String> searchInCitiesList() {
    List<String> temp = cities.cities
        .where((value) => value.toLowerCase().startsWith(query))
        .toList();
    for (String value in cities.cities) {
      if (value.toLowerCase().contains(query)) {
        if (!temp.contains(value)) {
          temp.add(value);
        }
      }
    }
    return temp;
  }
}
