import 'package:flutter/material.dart';
import 'package:new_weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            onSubmitted: (data){
              cityName = data;
              WeatherService service = WeatherService();
              service.getWeather(cityName: cityName!);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              label: Text('search'),
                hintText: 'Please Enter a city',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
