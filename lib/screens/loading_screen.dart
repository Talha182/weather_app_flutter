import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override


  void initState(){
    super.initState();
    getLocationData();
  }
  void getLocationData() async {


    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(locationWeather : weatherData,)));
    
  }
  // SpinKitCircle LoadingSpinner(){
  //   return const (color: Colors.red, size: 25.0);
  // }
  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        child: Center(
          child : SpinKitCircle(
            color: Colors.red,
            size: 50.0,
          )

        ),
      ),


    );
  }
}
