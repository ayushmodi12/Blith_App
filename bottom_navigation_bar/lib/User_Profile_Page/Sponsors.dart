import 'dart:ui';

import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';
import 'package:flutter/material.dart';

class spons extends StatefulWidget {
  const spons({Key? key}) : super(key: key);

  @override
  State<spons> createState() => _sponsState();
}

class _sponsState extends State<spons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 81, 234),
      appBar: AppBar(title: Text('Proud Sponsors'),),
      body: Column(
        children: [
          // SizedBox(
          //   height: 48,
          // ),
          // Container(
          //   // decoration: BoxDecoration(boxShadow: ),
          //   child: Row(
          //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Material(
          //         color: Color.fromARGB(255, 47, 81, 234),
          //         child: IconButton(
          //             // iconSize: 30,
          //             iconSize: MediaQuery.of(context).size.width * 0.065,
          //             icon: Icon(Icons.arrow_back),

          //             // splashColor: Colors.red,
          //             // splashRadius: 20,
          //             onPressed: () {
          //               Navigator.pop(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => userprofilepage()),
          //               );
          //             }),
          //       ),
          //       SizedBox(
          //         width: 1,
          //       ),
          //       Container(
          //         height: 57,
          //         width: 320,
          //         child: Center(
          //           child: Text(
          //             'Proud Sponsors',
          //             style: TextStyle(fontSize: 33, color: Colors.white),
          //           ),
          //         ),
          //         decoration: BoxDecoration(
          //           // boxShadow: [
          //           //   BoxShadow(
          //           //     color: const Color(0xFF000000),
          //           //     blurRadius: 20.0,
          //           //   ),
          //           // ],
          //           color: Color.fromARGB(255, 44, 70, 216),
          //           borderRadius: BorderRadius.circular(
          //             20,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          imagesgridview2(),
        ],
      ),
    );
  }

  Widget imagesgridview2() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height - 96.8,
        color: Colors.white,
        child: GridView.count(
          padding: EdgeInsets.only(
            // top: 10,
            top: MediaQuery.of(context).size.height * 0.0125,
            // left: 5,
            left: MediaQuery.of(context).size.width * 0.0125,
            right: MediaQuery.of(context).size.width * 0.0125,
          ),
          crossAxisCount: 2,
          // mainAxisSpacing: 5,
          // crossAxisSpacing: 5,
          crossAxisSpacing: MediaQuery.of(context).size.width * 0.0125,
          children: [...myImagesAdapted],
        ),
      );

  final List<Column> myImagesAdapted = [
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'Title Sponsor',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'Platinum Sponsor',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              Text(
                'Major Event',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
              Text(
                'Sponsor',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'Event Partner',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'Information Sponsor',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              Text(
                'Handicraft and',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
              Text(
                'Handloom Sponsor',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'Literature Sponsor',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              Text(
                'Study Abroad',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
              Text(
                'Sponsor',
                style: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'Medical Sponsor',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            'IT Sponsor',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
            ),
          ),
        ),
      ],
    ),
    // Column(
    //   children: [
    //     Image(
    //       image: AssetImage('images/image1.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //     Text('Platinum Sponsor'),
    //   ],
    // ),
    // Column(
    //   children: [
    //     Image(
    //       image: AssetImage('images/image1.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //     Text('Major Event Sponsor'),
    //   ],
    // ),
    // Column(
    //   children: [
    //     Image(
    //       image: AssetImage('images/image1.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //     Text('Event Partner'),
    //   ],
    // ),
    // Column(
    //   children: [
    //     Image(
    //       image: AssetImage('images/image1.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //     Text('Information Sponsor'),
    //   ],
    // ),
    // Column(
    //   children: [
    //     Image(
    //       image: AssetImage('images/image1.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //     Text('Handicraft and Handloom Sponsor'),
    //   ],
    // ),
    // Image(
    //   image: AssetImage('images/image2.jpeg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image3.jpeg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image4.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image5.jpeg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image6.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image7.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image8.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image9.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image10.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image11.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image12.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image13.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image14.jpg'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/image15.jpg'),
    //   fit: BoxFit.cover,
    // ),
  ];
}
