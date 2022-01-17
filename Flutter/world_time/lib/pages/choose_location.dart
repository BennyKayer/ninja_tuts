import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // // Because of async this function won't block other code
  // void getData() async {
  //   // Await makes it like a synchronous code
  //   // Can assign nicely
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return "Yoshi";
  //   });
  //   // Without await the code is non blocking and just runs the next line
  //   Future.delayed(Duration(seconds: 2), () {
  //     print('Egg collector');
  //   });
  //   print(username);
  // }

  // int counter = 0;

  List<WorldTime> locations = [
    WorldTime(location: "Perth", flag: "australia.png", url: "Australia/Perth"),
    WorldTime(
        location: "Buenos Aires",
        flag: "argentina.png",
        url: "America/Argentina/Buenos_Aires"),
    WorldTime(location: "Santiago", flag: "chile.png", url: "America/Santiago"),
    WorldTime(location: "Berlin", flag: "germany.png", url: "Europe/Berlin"),
    WorldTime(location: "Rome", flag: "italy.png", url: "Europe/Rome"),
    WorldTime(location: "Tokyo", flag: "japan.png", url: "Asia/Tokyo"),
    WorldTime(location: "Warsaw", flag: "poland.png", url: "Europe/Warsaw"),
    WorldTime(location: "Moscow", flag: "russia.png", url: "Europe/Moscow"),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDaytime": instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    // print('init state run');
    // getData();
    // print('I am not waiting for getData to complete!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
    // print('build run');
    // return Scaffold(
    //   backgroundColor: Colors.grey[200],
    //   // When we have app bar it automatically places the back arrow
    //   appBar: AppBar(
    //     backgroundColor: Colors.blue[900],
    //     title: Text('Choose a Location'),
    //     elevation: 0,
    //     centerTitle: true,
    //   ),
    //   body: ElevatedButton(
    //     onPressed: () {
    //       setState(() {
    //         counter += 1;
    //       });
    //     },
    //     child: Text('$counter'),
    //   ),
    // );
  }
}
