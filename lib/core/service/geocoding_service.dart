import 'package:weather_app/core/service/main_service/network_service.dart';
import 'package:http/http.dart' as http;
// this import get error cause api_keys.dart ignored from git for secure of private api keys
// this file includes api keys
// check for open weather appid 'https://openweathermap.org/api/'
import 'package:weather_app/core/utils/constants/api_keys.dart' as api_keys;

class GeocodingService {
  static Future<String> getCoordination(
    String province, [
    String? district,
  ]) async {
    try {
      http.Response response = await NetworkService.get(
          url: 'https://api.openweathermap.org/geo/1.0/direct?q='
              '${district != null ? '$district,' : ''}$province,TR&appid='
              //this line will gave error
              //to solve this issue check comment on import line
              '${api_keys.openWeatherApiKey}');
      if (response.statusCode == 200) {
        return response.body;
      }

      //TODO custom exception yaz
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
