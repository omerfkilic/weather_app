part of 'constants.dart';

class _AssetPaths {
  _AssetPaths._();
  final _ImagePaths _images = _ImagePaths._();
  _ImagePaths get images => _images;

  final _WeatherIconPaths _weatherIcons = _WeatherIconPaths._();
  _WeatherIconPaths get weatherIcons => _weatherIcons;

  final _JsonPaths _jsons = _JsonPaths._();
  _JsonPaths get jsons => _jsons;
}

class _ImagePaths {
  _ImagePaths._();
  final String cityDay = 'assets/city_images/city_day.png';

  final String cityNight = 'assets/city_images/city_night.png';
}


class _WeatherIconPaths {
  _WeatherIconPaths._();
  final String daytime = 'assets/weather_icons/daytime.svg';

  final String humidity = 'assets/weather_icons/humidity.svg';

  final String pressure = 'assets/weather_icons/pressure.svg';

  final String sunrise = 'assets/weather_icons/sunrise.svg';

  final String sunset = 'assets/weather_icons/sunset.svg';

  final String wind = 'assets/weather_icons/wind.svg';
}

class _JsonPaths {
  _JsonPaths._();
  final String provincesAndDistricts = 'assets/provinces&districts.json';
}