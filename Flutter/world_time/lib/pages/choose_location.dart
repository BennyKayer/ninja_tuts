import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // Because of async this function won't block other code
  void getData() async {
    // Await makes it like a synchronous code
    // Can assign nicely
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "Yoshi";
    });
    // Without await the code is non blocking and just runs the next line
    Future.delayed(Duration(seconds: 2), () {
      print('Egg collector');
    });
    print(username);
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('init state run');
    getData();
    print('I am not waiting for getData to complete!');
  }

  @override
  Widget build(BuildContext context) {
    print('build run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // When we have app bar it automatically places the back arrow
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('$counter'),
      ),
    );
  }
}
