import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Map",
            style: TextStyle(
              fontSize: 28,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      // body: Center(child: Text('Map')),
      // body: Center(
      //   child: Image.asset('images/newcomingsoon.jpg'),
      // ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 200),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'images/newcomingsoon.jpg',
          ),
        ),
      ),
    );
  }
}
