import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // Widget Text is going to be on the home screen
      // home: Text('hey ninjas'),
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Primer'),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),

      /// #14 Expanded Widgets
      body: Row(
        children: <Widget>[
          Expanded(flex: 4, child: Image.asset('assets/space-2.jpg')),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.indigo,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amberAccent,
              child: Text('3'),
            ),
          ),
        ],
      ),

      /// Column stuff
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       padding: EdgeInsets.all(30.0),
      //       color: Colors.teal,
      //       child: Text("xd"),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color: Colors.cyan,
      //       child: Text("ok"),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.indigo,
      //       child: Text('kk'),
      //     ),
      //   ],
      // ),

      /// Row stuff
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('hello'),
      //     TextButton(onPressed: () {}, child: Text('xd')),
      //     Container(
      //         color: Colors.cyan,
      //         padding: EdgeInsets.all(20.0),
      //         child: Text("Inside container"))
      //   ],
      // ),

      /// Without child container will fill up the space
      /// with child it will only be as wide as the child
      // body: Container(
      //   color: Colors.teal[300],
      //   padding: EdgeInsets.all(20.0),
      //   margin: EdgeInsets.all(20.0),
      //   child: Text('Hello'),
      // ),

      // body: Center(
      //
      //     /// Changing font and other TextStyle related stuff
      //     // child: Text(
      //     //   "Hello Ninjas",
      //     //   style: TextStyle(
      //     //     fontSize: 20.0,
      //     //     fontWeight: FontWeight.normal,
      //     //     letterSpacing: 2.0,
      //     //     color: Colors.grey[600],
      //     //     fontFamily: "IndieFlower",
      //     //   ),
      //     // ),
      //     /// Way to add images with urls
      //     // child: Image(
      //     //   image: NetworkImage('https://images.unsplash.com/photo-1501862700950-18382cd41497?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=747&q=80'),
      //     // ),
      //     /// Way to add local asset image
      //     // child: Image(
      //     //   image: AssetImage('assets/space-3.jpg'),
      //     // ),
      //     /// Another way of dealing with images
      //     // child: Image.asset('assets/space-2.jpg'),
      //     /// Icon Widget
      //     // child: Icon(
      //     //   Icons.airport_shuttle,
      //     //   color: Colors.lightBlue,
      //     //   size: 50.0,
      //     // ),
      //     /// Button Widgets
      //     // child: ElevatedButton(
      //     //   onPressed: () => 0,
      //     //   child: Text('click me'),
      //     //   style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
      //     // ),
      //     // child: TextButton(
      //     //   onPressed: () => 0,
      //     //   child: Text('xd'),
      //     // ),
      //     // child: ElevatedButton.icon(
      //     //     onPressed: () => 0,
      //     //     icon: Icon(Icons.mail),
      //     //     label: Text("Mail Me")
      //     //     ),
      //     // child: IconButton(
      //     //     onPressed: () => 0,
      //     //     icon: Icon(Icons.alternate_email)
      //     // ),
      // ),

      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () => 2,
        backgroundColor: Colors.amber[400],
      ),
    );
  }
}
