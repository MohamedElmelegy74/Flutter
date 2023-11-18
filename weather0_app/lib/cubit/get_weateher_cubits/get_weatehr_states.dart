import 'package:weather0_app/model/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {
  final String errorMassage;

  WeatherFailureState(this.errorMassage);
}
