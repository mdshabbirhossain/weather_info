import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  List<Map<String, dynamic>> WeatherInfo = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55 ,
      "windSpeed": 7.3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Weather Info App'),
      ),
      body: ListView.builder(
        itemCount: WeatherInfo.length,
        itemBuilder: (BuildContext context, int index) {
          var cityWeather = WeatherInfo[index];
          return ListTile(
            title: Text("City:${cityWeather['city']}",style: TextStyle(fontSize: 24),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Temperature: ${cityWeather['temperature']}°C'),
                Text('Condition: ${cityWeather['condition']}'),
                Text('Humidity: ${cityWeather['humidity']}%'),
                Text('Wind Speed: ${cityWeather['windSpeed']} m/s'),
              ],
            ),
          );
        },
      ),
    );
  }
}
