// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:bottom_navigation_bar/Events_Page/eventpage.dart';
import 'package:bottom_navigation_bar/Events_Page/eventwindow.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/Home_Page/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:marquee/marquee.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bottom_navigation_bar/splashscreen.dart';

// final CollectionReference _announcements =
//     FirebaseFirestore.instance.collection('announcements');

final Stream<QuerySnapshot> announcements =
    FirebaseFirestore.instance.collection('announcements').snapshots();

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override

  // int? c2;
  final user = FirebaseAuth.instance.currentUser!;

  getCouterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? count = pref.getInt('counterValue');
    return count;
  }

  setCounterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('counterValue', counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkForCounterValue();
  }

  checkForCounterValue() async {
    int count = await getCouterValue() ?? counter;

    setState(() {
      counter = count;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 148, 226, 255),
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.1, 0.6, 0.75, 1],
              stops: [0.1, 0.4, 0.6],
              colors: [
                // Color.fromARGB(255, 148, 226, 255),
                Color.fromARGB(255, 166, 243, 255),
                // Color.fromARGB(255, 90, 141, 237),
                Color.fromARGB(
                  255,
                  216,
                  234,
                  243,
                ),
                Color.fromARGB(
                  255,
                  216,
                  234,
                  243,
                )

                // Color.fromARGB(255, 91, 204, 216),
                // Color.fromARGB(255, 29, 209, 89),
                // Color.fromARGB(255, 0, 191, 118),
              ],
            ),
          ),
          child: Column(
            children: [
              // Image.asset('images/WhatsApp Image 2022-10-05 at 18.14.02.jpg'),

              Padding(
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height * 0.00625,
                  top: MediaQuery.of(context).size.height * 0.05625,
                  // bottom: 50,
                  // left: 10,
                  // right: 10,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.025,
                  ),
                  child: Container(
                    // height: 75,
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.00875,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 167, 186),
                      // color: Color.fromARGB(255,21,176,192,),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                    child: Padding(
                      // padding: EdgeInsets.symmetric(
                      //   horizontal: MediaQuery.of(context).size.width * 0.0625,
                      // ),
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.0625,
                        right: MediaQuery.of(context).size.width * 0.0525,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                // height: 4,
                                height:
                                    MediaQuery.of(context).size.height * 0.005,
                              ),
                              Container(
                                width: 225,
                                child: FittedBox(
                                  alignment: Alignment.centerLeft,
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    // 'Ayush Modi',
                                    user.displayName!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('images/i$counter.jpg'),
                            radius: MediaQuery.of(context).size.width * 0.1125,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // Image.asset('images/WhatsApp Image 2022-10-05 at 18.14.02.jpg'),
              // Image.asset('images/image 4341.png'),
              // SvgPicture.asset('images/shrey.png'),
              Image.asset('images/shrey.png'),
              // SizedBox(
              //   height: 10,
              // ),
              SizedBox(height: 5,),

              Container(
                // height: 303,
                height: (MediaQuery.of(context).size.height * 0.377) + 2.5,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01875,
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 167, 227, 255),
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.0125,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.0375,
                          right: MediaQuery.of(context).size.width * 0.0375,
                        ),
                        // width: 375,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          color: Color.fromARGB(255, 60, 158, 207),
                          // gradient: LinearGradient(colors: [Colors.blue, Colors.pink]),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.025),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Upcoming Events',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                // backgroundColor: Colors.blue,
                                // primary: Color.fromARGB(255, 98, 179, 255),
                                primary: Color.fromARGB(255, 1, 174, 177),
                                // primary: Color.fromARGB(255, 148, 226, 255),
                                // backgroundColor:Theme.of(context).primaryColor
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => eventpage(),
                                  ),
                                );
                              },
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    // SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow10()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/DSC_06086.jpg",
                                // precacheImage(AssetImage("images/logo_rienpa.png"), context);
                                category: "Synchronize",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow3()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/DSC_2414.JPG",
                                category: "Euphony",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow1()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/IMG_208771.jpg",
                                category: "Antaragnee",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow8()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/IMG-20221021-WA0018.jpg",
                                category: "Street Beat",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          // GestureDetector(
                          //   behavior: HitTestBehavior.translucent,
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => eventwindow7()));
                          //   },
                          //   child: AbsorbPointer(
                          //     child: eventcard(
                          //       image: "images/IMG_095991.jpg",
                          //       category: "Euphony",
                          //       // numOfBrands: 18,
                          //       press: () {},
                          //     ),
                          //   ),
                          // ),

                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow9()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/DSC_2439.JPG",
                                category: "String Theory",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          // GestureDetector(
                          //   behavior: HitTestBehavior.translucent,
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => eventwindow7()));
                          //   },
                          //   child: AbsorbPointer(
                          //     child: eventcard(
                          //       image: "images/Panache 132.jpeg",
                          //       category: "Panache",
                          //       // numOfBrands: 18,
                          //       press: () {},
                          //     ),
                          //   ),
                          // ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow4()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/Panache 2.jpeg",
                                category: "Panache",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow7()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/CSGO'20-2.JPG",
                                category: "Skirmish",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eventwindow5()));
                            },
                            child: AbsorbPointer(
                              child: eventcard(
                                image: "images/IMG_0563.JPG",
                                category: "Quizzitch",
                                // numOfBrands: 18,
                                press: () {},
                              ),
                            ),
                          ),
                          // GestureDetector(
                          //   behavior: HitTestBehavior.translucent,
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => eventwindow1()));
                          //   },
                          //   child: AbsorbPointer(
                          //     child: eventcard(
                          //       image: "images/image1.jpg",
                          //       category: "Pronites",
                          //       // numOfBrands: 18,
                          //       press: () {},
                          //     ),
                          //   ),
                          // ),
                          // eventcard(
                          //   image: "images/image2.jpeg",
                          //   category: "Symphoy",
                          //   // numOfBrands: 24,
                          //   press: () {},
                          // ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //

              Container(
                // height: 303,
                // height: MediaQuery.of(context).size.height * 0.377,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 8.0,
                        top: MediaQuery.of(context).size.height * 0.01,
                        // left: 10,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Container(
                        // height: 45,
                        height: MediaQuery.of(context).size.height * 0.05625,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 60, 158, 207),
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                        ),
                        padding: EdgeInsets.only(
                            // left: 15,
                            left: MediaQuery.of(context).size.width * 0.0375),
                        // color: Color.fromARGB(255, 5, 117, 157),
                        // color: Color.fromARGB(255, 60, 158, 207),
                        child: Row(
                          children: [
                            Text(
                              'Latest from Blith',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 255, 255, 255),
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //   stream: _announcements.snapshots(),
                    //   builder: (context,
                    //       AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //     final QueryDocumentSnapshot<Object?>? documentSnapshot =
                    //         streamSnapshot.data?.docs[0];

                    //     if (streamSnapshot.hasData) {
                    //       return Container(
                    //         height: 300,
                    //         child: ListView(),
                    //       );
                    //     } else {
                    //       return CircularProgressIndicator();
                    //     }
                    //   },
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 65,
              ),

              StreamBuilder<QuerySnapshot>(
                stream: announcements,
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Loading');
                  }

                  final data = snapshot.requireData;
                  double xheight=((data.size)*55)+100;
                  // if (xheight>400){
                  //   xheight=460;
                  // }
                  if (data.size==1){
                    xheight=90;
                  }
                  else if (data.size==2){
                    // xheight=180;
                    xheight=155;
                  }
                  else if (data.size==3){
                    xheight=220;
                  }
                  else if (data.size==4){
                    xheight=285;
                  }
                  else if (data.size==5){
                    xheight=350;
                  }
                  if (xheight>350){
                    xheight=375;
                    // xheight=90;
                    // xheight=155;
                    // xheight=220;
                    // xheight=285;
                    // xheight=350;

                  }
                  
                  // if (data.size==1){
                  //   xheight=100;
                  // }
                  // else if (data.size==2){
                  //   xheight=200;
                  // }
                  // else if (data.size==3){
                  //   xheight=300;
                  // }

                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.blueAccent,
                          // color: Color.fromARGB(255, 60, 158, 207),
                          // color: Color.fromARGB(255, 50, 131, 172),
                          // color: Color.fromARGB(255, 43, 113, 147),
                          // color: Color.fromARGB(255, 34, 88, 116),
                          // color: Color.fromARGB(255, 34, 65, 116),
                          color: Color.fromARGB(255, 31, 59, 106),
                          // color: Color.fromARGB(255, 0, 167, 186),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      // height: 200,
                      // height: 300,
                      // if (data.size==1){
                      //   height: 100,
                      // }
                      // height: (data.size)*100,
                      // height: (data.size)*90,
                      // height: (data.size)*95,
                      // height: ((data.size)*55)+100,
                      height: xheight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 30, bottom: 10),

                          // var height =
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: data.size,
                          itemBuilder: (context, index) {
                            // crossAxisAlignment: CrossAxisAlignment.start;
                            // return Text('* ${data.docs[index]['1']}');
                            if (index == 0) {
                              return Column(
                                children: [
                                  Container(
                                    height: 30,
                                    child: Marquee(
                                      // text: announcement.announcement,
                                      text: data.docs[index]['1'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        // color: Colors.black,
                                        fontSize: 16,
                                      ),
                                      scrollAxis: Axis.horizontal,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      blankSpace: 20.0,
                                      velocity: 100.0,
                                      pauseAfterRound: Duration(seconds: 1),
                                      // startPadding: 10.0,
                                      accelerationDuration:
                                          Duration(seconds: 1),
                                      accelerationCurve: Curves.linear,
                                      decelerationDuration:
                                          Duration(milliseconds: 500),
                                      decelerationCurve: Curves.easeOut,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 2.0,
                                  ),
                                ],
                              );
                            } else {
                              // return Text('* ${data.docs[index]['1']}', style: TextStyle(color: Colors.white, fontSize: 16),);
                              return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    data.docs[index]['1'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  SizedBox(height: 7.5,),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 2.0,
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),

              // StreamBuilder<List<Announcement>>(
              //   // stream: _announcements.snapshots(),
              //   stream: readAnnouncement(),
              //   builder:
              //       //   (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              //       // final QueryDocumentSnapshot<Object?>? documentSnapshot =
              //       //     streamSnapshot.data?.docs[0];
              //       (context, snapshot) {
              //     if (snapshot.hasData) {
              //       final announements = snapshot.data!;
              //       return Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //               // color: Colors.blueAccent,
              //               // color: Color.fromARGB(255, 60, 158, 207),
              //               // color: Color.fromARGB(255, 50, 131, 172),
              //               // color: Color.fromARGB(255, 43, 113, 147),
              //               // color: Color.fromARGB(255, 34, 88, 116),
              //               color: Color.fromARGB(255, 34, 65, 116),
              //               // color: Color.fromARGB(255, 31, 59, 106),
              //               // color: Color.fromARGB(255, 0, 167, 186),
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(20))),
              //           // height: 300,
              //           width: 400,
              //           child: Padding(
              //             padding: const EdgeInsets.all(20.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children:
              //                   announements.map(buildAnnouncement).toList(),
              //             ),
              //             // child: Column(
              //             //   children: [
              //             //     Text(
              //             //       documentSnapshot!['1'],
              //             //       style: TextStyle(
              //             //           fontSize: 16, color: Colors.white),
              //             //     ),
              //             //     SizedBox(
              //             //       height: 20,
              //             //     ),
              //             //     Text(
              //             //       documentSnapshot['2'],
              //             //       style: TextStyle(
              //             //           fontSize: 16, color: Colors.white),
              //             //     ),
              //             //   ],
              //             // ),
              //           ),
              //         ),
              //       );
              //     }
              //     // else if (AsyncSnapshot.docs[0]) {

              //     // }
              //     else {
              //       return CircularProgressIndicator();
              //     }
              //   },
              // ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Column(
              //     children: [
              //       Container(
              //         height: 200,
              //         child: Stack(
              //           children: [
              //             Image.asset('images/image1.jpg'),
              //             Container(
              //               decoration: BoxDecoration(
              //                 gradient: LinearGradient(
              //                   begin: Alignment.topCenter,
              //                   end: Alignment.bottomCenter,
              //                   colors: [
              //                     Colors.green.withOpacity(0.4),
              //                     Color(0xFF343434).withOpacity(0.2),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.symmetric(
              //                 horizontal: 15.0,
              //                 vertical: 10,
              //               ),
              //               child: Text.rich(
              //                 TextSpan(
              //                   style: TextStyle(color: Colors.white),
              //                   children: [
              //                     TextSpan(
              //                       text: "Antaragnee\n",
              //                       style: TextStyle(
              //                         fontSize: 18,
              //                         fontWeight: FontWeight.bold,
              //                       ),
              //                     ),
              //                     // TextSpan(text: "$numOfBrands Brands")
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Image.asset('images/Group 331.png'),
              // Image.asset('images/Group 33.png'),
              // SizedBox(height: 100,),

              SvgPicture.asset('images/Group 33 (1).svg'),
              // SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}

// Widget buildAnnouncement(Announcement announcement) => Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (snapshot.docs[0])
//           Container(
//             // width: 200,
//             height: 30,
//             child: Marquee(
//               text: announcement.announcement,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//               scrollAxis: Axis.horizontal,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               blankSpace: 20.0,
//               velocity: 100.0,
//               pauseAfterRound: Duration(seconds: 1),
//               startPadding: 10.0,
//               accelerationDuration: Duration(seconds: 1),
//               accelerationCurve: Curves.linear,
//               decelerationDuration: Duration(milliseconds: 500),
//               decelerationCurve: Curves.easeOut,
//             ),
//           ),
//         // Text(
//         //   announcement.announcement,
//         //   style: TextStyle(
//         //     color: Colors.white,
//         //     fontSize: 16,
//         //   ),
//         // ),
//         Divider(
//           color: Colors.grey,
//           thickness: 2.0,
//         ),
//       ],
//     );

Stream<List<Announcement>> readAnnouncement() => FirebaseFirestore.instance
    .collection('announcements')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => Announcement.fromJSON(doc.data())).toList());

class Announcement {
  final String announcement;

  Announcement({
    required this.announcement,
  });

  Map<String, dynamic> toJSON() => {
        '1': announcement,
      };

  static Announcement fromJSON(Map<String, dynamic> json) => Announcement(
        announcement: json['1'],
      );
}

class eventcard extends StatelessWidget {
  const eventcard({
    Key? key,
    required this.category,
    required this.image,
    // required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  // final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          // width: 300,
          width: MediaQuery.of(context).size.width * 0.78,
          // height: 200,
          height: MediaQuery.of(context).size.height * 0.248,
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.05),
            child: Stack(
              children: [
                // precacheImage(AssetImage(image), context,);
                Image.asset(
                  image,
                  // fit: BoxFit.contain,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color.fromARGB(255, 100, 179, 252),
                    //     offset: Offset(0.0, 2.0), //(x,y)
                    //     blurRadius: 10.0,
                    //   ),
                    // ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 5, 5, 5).withOpacity(0.85),
                        Color.fromARGB(255, 100, 100, 100).withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      // horizontal: 15.0,
                      horizontal: MediaQuery.of(context).size.width * 0.0375,
                      // vertical: 10,
                      vertical: MediaQuery.of(context).size.height * 0.0125),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
