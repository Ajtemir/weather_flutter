import 'package:flutter/material.dart';
import 'package:weather_example/models/weather_api.dart';
import 'package:weather_example/models/weather_forecast_daily.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_example/screens/city_screen.dart';
import 'package:weather_example/widgets/bottom_list_view.dart';
import 'package:weather_example/widgets/city_view.dart';
import 'package:weather_example/widgets/detail_view.dart';
import 'package:weather_example/widgets/temp_view.dart';

// ctrl + shift + I
class WeatherForecastScreen extends StatefulWidget {
  final locationWeather;
  WeatherForecastScreen({this.locationWeather});
  // const WeatherForecastScreen({Key? key}) : super(key: key);

  @override
  State<WeatherForecastScreen> createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  late Future<WeatherForecast> forecastObject;
  late String _cityName;
  // String _cityName = 'London';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.locationWeather != null) {
      forecastObject = Future.value(widget.locationWeather);
    }
    //forecastObject.then((weather) {
    //  print(weather.list![0].weather![0].main);
    //});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('openweathermap.org'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.my_location),
          onPressed: () {
            setState(() {
              forecastObject = WeatherApi().fetchWeatherForecast();
            });
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              var tappedName = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CityScreen();
                  },
                ),
              );
              if (tappedName != null) {
                setState(() {
                  _cityName = tappedName;
                  print(_cityName);
                  forecastObject = WeatherApi()
                      .fetchWeatherForecast(cityName: _cityName, isCity: true);
                });
              }
            },
            icon: Icon(Icons.location_city),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: FutureBuilder<WeatherForecast>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      CityView(snapshot: snapshot),
                      SizedBox(
                        height: 50.0,
                      ),
                      TempView(snapshot: snapshot),
                      SizedBox(
                        height: 50.0,
                      ),
                      DetailView(snapshot: snapshot),
                      SizedBox(
                        height: 50.0,
                      ),
                      BottomListView(
                        snapshot: snapshot,
                      )
                    ],
                  );
                } else {
                  return Center(
                    child: Text(
                      "City not found\nPlease, enter correct city",
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                    // SpinKitDoubleBounce(
                    //   color: Colors.black87,
                    //   size: 100,
                    // ),
                  );
                }
              },
              future: forecastObject,
            ),
          )
        ],
      ),
    );
  }
}
