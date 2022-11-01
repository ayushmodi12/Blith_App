import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'log.dart';
import 'package:bottom_navigation_bar/HomePage.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  //
// password name email
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login Page");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => homepage());
    }
  }

  Future<void> register(String email, password, userid) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("about user", "User message",
          backgroundColor: Colors.blueAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Account creation failed",
            style: TextStyle(
                color: Colors.white
            ),),
          messageText: Text(e.toString(),
            style: TextStyle(
                color: Colors.white
            ),)
      );
    }
  }
  Future<void> login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("about login", "login message",
          backgroundColor: Colors.blueAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("login failed",
            style: TextStyle(
                color: Colors.white
            ),),
          messageText: Text(e.toString(),
            style: TextStyle(
                color: Colors.white
            ),)
      );
    }
  }
  void logout() async{
   await auth.signOut();
  }
}// TODO Implement this library.