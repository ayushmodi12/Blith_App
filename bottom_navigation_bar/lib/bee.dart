import 'dart:async';

import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/o/sp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bottom_navigation_bar/HomePage.dart';
import 'package:bottom_navigation_bar/EventsPage.dart';
import 'package:bottom_navigation_bar/Map.dart';
import 'package:bottom_navigation_bar/Store.dart';
import 'package:bottom_navigation_bar/ProfilePage.dart';
import 'package:flutter/services.dart';

import 'Events_Page/eventpage.dart';
import 'Spalsh_Screen/main.dart';
import 'User_Profile_Page/userprofilepage.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

bool canback = false;

class _MyApp2State extends State<MyApp2> {
  int index = 0;

  // Future<bool> _onWillPop() async {
  //   if (canback == true) {
  //     SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  //   } else {
  //     // index=0;
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) {
  //           // return LoginPage();
  //           return homepage();
  //         },
  //       ),
  //     );
  //   }

  //   Timer(Duration(seconds: 2), () {
  //     setState(() {
  //       canback = false;
  //     });
  //   });
  //   canback = true;
  //   return true;
  // }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home_outlined,
        // CupertinoIcons.house_alt,
        // CupertinoIcons.home,
        // CupertinoIcons.home,
        size: 30,
      ),
      Icon(
        // Icons.storage_outlined,
        CupertinoIcons.list_bullet,
        size: 30,
      ),
      Icon(
        // Icons.map_outlined,
        CupertinoIcons.map,
        size: 30,
      ),
      Icon(
        // Icons.store_outlined,
        CupertinoIcons.cart,
        size: 30,
      ),
      Icon(
        // Icons.person_outline_rounded,
        CupertinoIcons.person,
        // CupertinoIcons.profile_circled,
        size: 30,
      ),
    ];

    final screens = [
      homepage(),
      eventpage(),
      Map(),
      store(),
      userprofilepage(),
    ];

    // final colorA = LinearGradient(colors: [Colors.indigo, Colors.pink]);

    return MaterialApp(
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      // home: xx(),
      home: Container(
        // color: Colors.pink,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.indigo,
        //       Colors.pink,
        //     ],
        //   ),
        // ),
        child: SafeArea(
          top: false,
          child: ClipRect(
            child: Scaffold(
              extendBody: true,
              body: screens[index],
              backgroundColor: Colors.pink,
              bottomNavigationBar: CurvedNavigationBar(
                height: 52,
                backgroundColor: Colors.transparent,
                items: items,
                animationDuration: Duration(
                  milliseconds: 300,
                ),
                onTap: (index) => setState(() => this.index = index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Future<bool> _onWillPop() async {

  //   if (canback == true) {
  //     SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  //   }else{
  //     setState(() {
  //       index=0;
  //     });
  //   }

  //   Timer(Duration(seconds: 2), () {
  //     setState(() {
  //       canback = false;
  //     });
  //   });
  //   canback = true;
  //   return true;
  // }

  // Future<bool> systemBackButtonPressed() async {
  //   if (navigatorKeys[profileController.selectedIndex.value]!
  //       .currentState!
  //       .canPop()) {
  //     navigatorKeys[profileController.selectedIndex.value]!.currentState!.pop(
  //         navigatorKeys[profileController.selectedIndex.value]!.currentContext);
  //   } else {
  //     SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
  //   }
  //   return true;
  // }
}
