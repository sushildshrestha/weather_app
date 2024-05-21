import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/weather_services.dart';

class WeatherPageScreen extends StatefulWidget {
  const WeatherPageScreen({super.key});

  @override
  State<WeatherPageScreen> createState() => _WeatherPageScreenState();
}

class _WeatherPageScreenState extends State<WeatherPageScreen> {
//apiKey
  final _weatherService =
      WeatherService(apiKey: '3078a8c88af12bb7795b8f3de465b6a4');
  Weather? _weather;
  //fetch weather
  fetchWeather() async {
    //get current city
    String cityName = await _weatherService.getCurrentCity();

    //get weather of that city
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  //init state
  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  //weather animations

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          //city name

          //temperature
        ],
      ),
    );
  }
}
