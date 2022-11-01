import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/Intro_Screens/demo.dart';
import 'package:bottom_navigation_bar/Intro_Screens/env.dart';
import 'package:bottom_navigation_bar/o/sp.dart';
import 'package:bottom_navigation_bar/pagescreens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bottom_navigation_bar/HomePage.dart';
import 'package:bottom_navigation_bar/EventsPage.dart';
import 'package:bottom_navigation_bar/Map.dart';
import 'package:bottom_navigation_bar/Store.dart';
import 'package:bottom_navigation_bar/ProfilePage.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';

import 'Events_Page/eventpage.dart';
import 'Spalsh_Screen/main.dart';
import 'User_Profile_Page/userprofilepage.dart';
import 'auth/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().then((value)=> Get.put(AuthController()));
//   runApp(const MyApp());
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static String _pkg = "gooey_edge";
  static String? get pkg => Env.getPackage(_pkg);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

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
      Store(),
      userprofilepage(),
    ];

    // final colorA = LinearGradient(colors: [Colors.indigo, Colors.pink]);

    return GetMaterialApp(
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      // home: xx(),
      // home: pgsc(),
      // home: GooeyEdgeDemo(),
      home: AnimatedSplashScreen(
        // curve: Curves.easeInCirc,
        backgroundColor: Colors.black,
        // backgroundColor: Colors.amber,
        // splash: Icons.home,
        // splash: Container(),
        // splash: SvgPicture.asset('images/Frame 7.svg', height: 400, width: 400,),
        // splash: Container(
        //   child: SvgPicture.asset(
        //     'images/Frame 7.svg',
        //   ),
        // ),
        splashIconSize: 185,
        splash: Container(
          child: Image.asset('images/Frame 71.png'),
        ),
        duration: 3000,
        animationDuration: Duration(seconds: 1),
        splashTransition: SplashTransition.fadeTransition,
        // splashTransition: SplashTransition.scaleTransition,
        // splashTransition: SplashTransition.sizeTransition,
        // splashTransition: SplashTransition.slideTransition,
        // splashTransition: SplashTransition.decoratedBoxTransition,
        // pageTransitionType: PageTransitionType.scale,
        nextScreen: GooeyEdgeDemo(),
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
      // home: Container(
      //   // color: Colors.pink,
      //   // decoration: BoxDecoration(
      //   //   gradient: LinearGradient(
      //   //     colors: [
      //   //       Colors.indigo,
      //   //       Colors.pink,
      //   //     ],
      //   //   ),
      //   // ),
      //   child: SafeArea(
      //     top: false,
      //     child: ClipRect(
      //       child: Scaffold(
      //         extendBody: true,
      //         body: screens[index],
      //         backgroundColor: Colors.pink,
      //         bottomNavigationBar: CurvedNavigationBar(
      //           height: 49,
      //           backgroundColor: Colors.transparent,
      //           items: items,
      //           animationDuration: Duration(
      //             milliseconds: 300,
      //           ),
      //           onTap: (index) => setState(() => this.index = index),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
