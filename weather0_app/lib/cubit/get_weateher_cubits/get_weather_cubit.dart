import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather0_app/cubit/get_weateher_cubits/get_weatehr_states.dart';
import 'package:weather0_app/model/weather_model.dart';
import 'package:weather0_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());

  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel));
    } catch (e) {
      emit(
        WeatherFailureState(
          e.toString(),
        ),
      );
    }
  }
}
