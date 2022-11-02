// // import 'package:shared_preferences/shared_preferences.dart';

// // final prefs = await SharedPreferences.getInstance();

// // // read
// // final myInt = prefs.getInt('my_int_key') ?? 0;
// // // write
// // prefs.setInt('my_int_key', 42);

// // int counter = 1;

// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';

// // class globa extends StatefulWidget {
// //   const globa({Key? key}) : super(key: key);

// //   @override
// //   State<globa> createState() => _globaState();
// // }

// // abstract class _globaState extends State<globa> {
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     checkForCounterValue();
// //   }
// //   checkForCounterValue() {
// //     int count = getCouterValue() ?? 0;
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter/src/foundation/key.dart';

// import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';

// import 'globals.dart' as globals;

// import 'package:shared_preferences/shared_preferences.dart';

// class gbals extends StatefulWidget {
//   const gbals({Key? key}) : super(key: key);

//   @override
//   State<gbals> createState() => _gbalsState();
// }

// class _gbalsState extends State<gbals> {

//   int counter = 1;

//   getCouterValue() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     int? count = pref.getInt('counterValue');
//     return count;
//   }

//   setCounterValue() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setInt('counterValue', counter);
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     checkForCounterValue();
//   }
//   checkForCounterValue() async {
//     int count = await getCouterValue() ?? 0;

//     setState((){
//       counter = count;
//     });
//   }
  

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Container();
//   // }

//   @override
//   dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }