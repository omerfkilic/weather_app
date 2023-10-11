import 'package:weather_app/core/service/main_service/network_service.dart';
import 'package:http/http.dart' as http;


class WeatherService {
  WeatherService._();
  static Future<String> getCurrentWeatherData(String coordination) async {
    try {
      http.Response response = await NetworkService.get(
        url: 'https://api.open-meteo.com/v1/forecast?$coordination&'
            'hourly=relativehumidity_2m,surface_pressure&'
            'daily=weathercode,temperature_2m_max,temperature_2m_min,sunrise,sunset&current_weather=true&'
            'timeformat=unixtime&timezone=auto&forecast_days=3',
      );
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
