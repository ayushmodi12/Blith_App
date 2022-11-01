import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/Events_Page/eventwindow.dart';
import 'package:bottom_navigation_bar/Events_Page/config.dart';

class eventpage extends StatefulWidget {
  eventpage({Key? key}) : super(key: key);

  @override
  State<eventpage> createState() => _eventpageState();
}

class _eventpageState extends State<eventpage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2000),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.25, 0.5, 0.75, 1],
          colors: [
            Color.fromARGB(255, 90, 141, 237),
            Color.fromARGB(255, 91, 204, 216),
            Color.fromARGB(255, 29, 209, 89),
            Color.fromARGB(255, 0, 191, 118),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: const Center(
              child: Text(
            "Events",
            style: TextStyle(
                fontSize: 28, color: Color.fromARGB(255, 255, 255, 255)),
          )),
        ),
        body: ListView(
          // padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.04,
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: const Text(
                'Register NOW!',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event1(),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event3(),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event5(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event6(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event7(),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event10(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event11(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event2(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event4(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event8(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event9(),
            ),

            //
            //
            //
            SizedBox(
              height: 60,
            ),
            // Image.asset('images/events section 1.png'),
          ],
        ),
        // backgroundColor: Colors.purple,
        // backgroundColor: Colors.yellow,
      ),
    );
  }

  Widget Event1() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow1()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // color: Color.fromARGB(255, 226, 225, 225),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 1,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Antaragnee.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height * 0.03125,
                  top: 0,
                ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 128, 0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          // left: 15.0,
                          left: MediaQuery.of(context).size.width * 0.0375,
                          // top: 12,
                          top: MediaQuery.of(context).size.height * 0.015,
                        ),
                        child: Text(
                          'Antaragnee',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event2() => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => eventwindow2(),
            ),
          );
        },
        child: Container(
          height: 220,
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 255, 39),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList,
                      ),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Align(
                      child: Hero(
                        tag: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 33),
                          child: Image.asset(
                            'images/skirmish_light(transparentBG)-01.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 0, 25, 211),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 37.0, top: 12),
                        child: Text(
                          'Cubing',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 60, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              )
            ],
          ),
        ),
      );

  Widget Event3() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow3()));
        },
        child: Container(
          height: 220,
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList,
                      ),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Align(
                      child: Hero(
                        tag: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10,
                              left: 15,
                              // right: 5,
                              bottom: 10),
                          child: Image.asset(
                            'images/euphony_light.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 27),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // height: 50,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 12),
                        child: Text(
                          'Euphony',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 60, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              )
            ],
          ),
        ),
      );

  Widget Event4() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow4()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 4,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Antaragnee.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 46, 209, 10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 12),
                        child: Text(
                          'Panache',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event5() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow5()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 187, 255),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 5,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(top: 35, left: 10, right: 6),
                          // top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/quizzitch-light (1).png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 0, 208),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28.0, top: 12),
                        child: Text(
                          'Quizzitch',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event6() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow6()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 210, 157),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 6,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 50),

                          // top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/reverbcolour.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 25, 0, 255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 42.0, top: 12),
                        child: Text(
                          'Reverb',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event7() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow7()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 129, 0, 194),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 7,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Skrimish Dark logo.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 132, 0, 255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 12),
                        child: Text(
                          'Skirmish',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event8() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow8()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 8,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Antaragnee.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 85, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 21.0, top: 12),
                        child: Text(
                          'Solo Dance',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event9() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow9()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 9,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Antaragnee.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 51, 201, 10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.0, top: 12),
                        child: Text(
                          'String Theory',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event10() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => eventwindow10()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 71, 255),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 10,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding:
                              EdgeInsets.only(top: 18, bottom: 12, left: 10),

                          // top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Synchronize_logo.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 0, 153),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 12),
                        child: Text(
                          'Synchronize',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event11() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => eventwindow11()));
        },
        child: Container(
          // height: 220,
          // margin: EdgeInsets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 255, 44),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 11,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/unkahi_logo transparent-01.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 0, 153, 255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 42.0, top: 12),
                        child: Text(
                          'Unkahi',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Date: TBA',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 10,
                        // left: 10,
                        // right: 10,
                        top: MediaQuery.of(context).size.height * 0.0125,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Text(
                        'Register here',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // margin: EdgeInsets.only(top: 60, bottom: 20),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.075,
                    bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

//

}