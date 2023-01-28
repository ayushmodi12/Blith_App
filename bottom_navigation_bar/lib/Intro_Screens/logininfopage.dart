import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/Intro_Screens/userform.dart';
import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'users_sheet_api.dart';

// int idss = 1;

late int id;

class logininfo extends StatefulWidget {
  logininfo({super.key});
  // static int idss=1;
  // static late int id;

  // logininfo({Key? key, required this.id}) : super(key: key);

  @override
  State<logininfo> createState() => _logininfoState();
}

class _logininfoState extends State<logininfo> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getUsers();
  //   initUser();
  //   // checkForIdValue();
  //   // checkForname();
  //   // checkForuserValue();
  // }
  // getIdValue() async {
  //   SharedPreferences prefi = await SharedPreferences.getInstance();
  //   int? idn = prefi.getInt('idValue');
  //   return idn;
  // }

  // setIdValue() async {
  //   SharedPreferences prefi = await SharedPreferences.getInstance();
  //   prefi.setInt('idValue', id);
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   checkForIdValue();
  //   // checkForuserValue();
  // }

  // checkForIdValue() async {
  //   int idn = await getIdValue();

  //   setState(() {
  //     id = idn;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: UserFormWidget(
            onSavedUser: (user) async {
              id = await UserSheetApi.getRowCount() + 1;
              // logininfo.idss=id;
              final newUser = user.copy(id: id);
              await UserSheetApi.insert([newUser.toJson()]);
            },
          ),
        ),
        // child: ElevatedButton(
        //   child: Text('Login'),
        //   onPressed: () async {
        //     final user = User(
        //       id: 1,
        //       name: 'Paul',
        //       email: 'www',
        //       isBeginner: true,
        //     );
        //     await UserSheetApi.insert([user.toJson()]);
        //   },
        // ),
      ),
    );
  }
}
