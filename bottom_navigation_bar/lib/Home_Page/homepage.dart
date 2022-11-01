// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bottom_navigation_bar/Events_Page/eventpage.dart';
import 'package:bottom_navigation_bar/Events_Page/eventwindow.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/Home_Page/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
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
                  // bottom: 5,
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
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.0625,
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
                              Text(
                                'Ayush Modi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Colors.white,
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

              Container(
                // height: 303,
                height: MediaQuery.of(context).size.height * 0.377,
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
                                category: "Solo Dance",
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
                height: MediaQuery.of(context).size.height * 0.377,
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
                    )
                  ],
                ),
              ),

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
              SvgPicture.asset('images/Group 33 (1).svg'),
            ],
          ),
        ),
      ),
    );
  }
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
                  fit: BoxFit.contain,
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
