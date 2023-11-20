import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather0_app/cubit/get_weateher_cubits/get_weatehr_states.dart';
import 'package:weather0_app/cubit/get_weateher_cubits/get_weather_cubit.dart';
import 'package:weather0_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.weatherCondition,
                ),
              ),
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case "Sunny":
    case "Partly cloudy":
    case "Mist":
    case "Fog":
      return Colors.yellow;
    case "Cloudy":
    case "Overcast":
      return Colors.blueGrey;
    case "Patchy rain possible":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
      return Colors.cyan;
    case "Patchy snow possible":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
      return Colors.lightBlue;
    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.orange;
    case "Blowing snow":
    case "Blizzard":
      return Colors.deepOrange;
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
      return Colors.blueGrey;
    case "Light sleet":
    case "Moderate or heavy sleet":
      return Colors.teal;
    case "Ice pellets":
      return Colors.grey;
    default:
      return Colors.blue;
  }
}
