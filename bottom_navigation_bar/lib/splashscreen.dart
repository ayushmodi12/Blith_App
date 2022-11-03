

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Intro_Screens/demo.dart';
import 'bee.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User _user;
  @override
  void initState() {
    super.initState();
    //  Firebase.initializeApp().whenComplete(() { 
    //   // print("completed");
    //   setState(() {initializeUser();
    // navigateUser();});  
    // });
    initializeUser();
    navigateUser();
  }

  Future? initializeUser() async {
    WidgetsFlutterBinding.ensureInitialized();
    // final colorA = LinearGradient(colors: [Colors.indigo, Colors.pink]);
    // await Firebase.initializeApp();
    // ignore: await_only_futures
    final User? firebaseUser =  FirebaseAuth.instance.currentUser;
    await firebaseUser?.reload();
    _user =(_auth.currentUser) as User;
// get User authentication status here
  } 

  navigateUser() async {
    // checking whether user already loggedIn or not
    if (_auth.currentUser != null) {
      // &&  FirebaseAuth.instance.currentUser.reload() != null
      Timer(
        Duration(seconds: 2),
            () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) =>
                    MyApp2()),
                (Route<dynamic> route) => false),
      );
    } else {
      Timer(Duration(seconds: 2),
          ()=> Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) =>
                      GooeyEdgeDemo()),
                  (Route<dynamic> route) => false),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset('images/Frame 71.png'),
        ),
      ),
    );
  }
}