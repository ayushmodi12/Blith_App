// import 'dart:js_util';

import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/auth/signin.dart';
import 'package:bottom_navigation_bar/bee.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

// String uss = 'a';
late String ussa;

class UserFormWidget extends StatefulWidget {
  final ValueChanged<User2> onSavedUser;
  // static String uss = 'a';

  const UserFormWidget({
    Key? key,
    required this.onSavedUser,
  }) : super(key: key);

  // const UserFormWidget({super.key});

  @override
  State<UserFormWidget> createState() => _UserFormWidgetState();
}

class _UserFormWidgetState extends State<UserFormWidget> {
  final user = FirebaseAuth.instance.currentUser!;
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerName;
  late TextEditingController controllerEmail;
  late bool isBeginner;

  getname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? nn = pref.getString('name');
    return nn;
  }

  setname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name', ussa);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();

    checkForname();
    // checkForuserValue();
  }

  checkForname() async {
    String nn = await getname();

    setState(() {
      ussa = nn;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   initUser();
  // }

  void initUser() {
    controllerName = TextEditingController();
    controllerEmail = TextEditingController();
    this.isBeginner = true;
  }
  // color: Color.fromARGB(255, 118, 98, 0),
  // color: Color.fromARGB(255, 112, 120, 0),

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildName(),
            const SizedBox(
              height: 16,
            ),
            buildEmail(),
            const SizedBox(
              height: 16,
            ),
            buildBeginner(),
            const SizedBox(
              height: 16,
            ),
            buildSubmit(),
          ],
        ),
      );

  Widget buildName() => TextFormField(
        controller: controllerName,
        decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Name' : null,
      );

  Widget buildEmail() => TextFormField(
        controller: controllerEmail,
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && !value.contains('@') ? 'Enter Email' : null,
      );

  Widget buildBeginner() => SwitchListTile(
        contentPadding: EdgeInsets.zero,
        // controlAffinity: ListTileControlAffinity.leading,
        value: isBeginner,
        title: Text('Is a student?'),
        onChanged: (value) => setState(() => isBeginner = value),
        // onChanged: (value) {
        //   if (value) {
        //     value = false;
        //   } else {
        //     value = true;
        //   }
        // },
      );

  Widget buildSubmit() => ElevatedButton(
        child: Text('Login'),
        onPressed: () {
          final form = formKey.currentState!;
          final isValid = form.validate();
          ussa = controllerName.text;
          // UserFormWidget.uss = controllerName.text;
          if (isValid) {
            final userx = User2(
              fireuid: user.uid,
              name: controllerName.text,
              email: controllerEmail.text,
              isBeginner: isBeginner,
              // fireuid: user.uid,
            );
            widget.onSavedUser(userx);
            Navigator.of(this.context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return MyApp2();
                },
              ),
            );
          }
          //
          //
          //
          //
          // signInWithGoogle().then((result) {
          //   if (result != null) {
          // Navigator.of(this.context).pushReplacement(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return MyApp2();
          //     },
          //   ),
          // );
          //   }
          // });
        },
      );
}

// final uss = controllerName;
