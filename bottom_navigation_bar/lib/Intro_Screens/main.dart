import 'package:flutter/material.dart';
// import 'package:intro_screens/env.dart';
import 'package:bottom_navigation_bar/Intro_Screens/env.dart';
// import 'package:shared/env.dart';
import 'demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  static String _pkg = "gooey_edge";
  static String? get pkg => Env.getPackage(_pkg);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: GooeyEdgeDemo(title: 'Gooey Edge Demo'),
    );
  }
}
