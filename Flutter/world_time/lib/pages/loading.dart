import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   // Assign to a response object it's basically a string
  //   Response response =
  //       await get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));
  //   // Convert it using stuff from dart:convert
  //   Map data = json.decode(response.body);
  //   print(data);
  //   print(data['title']);
  // }
  // void getTime() async {
  //   Response response = await get(
  //       Uri.parse("http://worldtimeapi.org/api/timezone/Europe/Warsaw"));
  //   Map data = json.decode(response.body);
  //
  //   String datetime = data['utc_datetime'];
  //   String utcOffset = data['utc_offset'].substring(1, 3);
  //
  //   DateTime now = DateTime.parse(datetime);
  //   now = now.add(Duration(hours: int.parse(utcOffset)));
  //
  //   print(now);
  //   print(utcOffset);
  // }

  int counter = 0;
  String time = "loading";

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: "Warsaw", flag: "warsaw.png", url: "Europe/Warsaw");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDaytime": instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    // getData();
    // getTime();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitPouringHourglass(
          color: Colors.blueAccent,
          size: 80.0,
        ),
      ),
    );
  }
}
