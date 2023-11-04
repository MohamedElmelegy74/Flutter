import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather0_app/model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com';
  final String apiKey = '204a3fd3e6be4e7ebf3151218232210';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=1&');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMassage = e.response?.data['error']['message'] ??
          'Opps there was an error ,Try later';
      throw Exception(errorMassage);
    } catch (e) {
      log(e.toString());
      throw Exception('Opps there was an error ,Try later');
    }
  }
}
