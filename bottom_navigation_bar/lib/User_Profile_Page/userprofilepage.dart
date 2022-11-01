import 'package:bottom_navigation_bar/User_Profile_Page/Contact_Us.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/Developers.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/OurTeam.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/Sponsors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'globals.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia {
  facebook,
  twitter,
  email,
  linkedin,
  whatsapp,
  instagram,
  youtube
}

class userprofilepage extends StatefulWidget {
  const userprofilepage({Key? key}) : super(key: key);

  @override
  State<userprofilepage> createState() => _userprofilepageState();
}

class _userprofilepageState extends State<userprofilepage> {
  void newImage() {
    setState(() {
      if (counter != 5) {
        counter++;
      } else {
        counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              // height: 425,
              height: MediaQuery.of(context).size.height * 0.53,
              // width: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08125),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/i$counter.jpg'),
                      radius: MediaQuery.of(context).size.width * 0.225,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      'Ayush Modi',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0125,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.0625),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: newImage,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                        child: Text(
                          'Change Avatar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              // left: 75,
              left: MediaQuery.of(context).size.width * 0.1875
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                      bottomLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contactus()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0625,
                child: Center(
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),

          // Padding(
          //   padding: EdgeInsets.only(
          //     right: MediaQuery.of(context).size.width * 0.1875,
          //   ),
          //   child: TextButton(
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(Colors.indigo),
          //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //         RoundedRectangleBorder(
          //           borderRadius: BorderRadius.only(
          //             topRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //             bottomRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //           ),
          //           side: BorderSide(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: Center(
          //       child: Container(
          //         height: MediaQuery.of(context).size.height * 0.0625,
          //         child: Center(
          //           child: Text(
          //             'Campus Abassador',
          //             style: TextStyle(
          //               fontSize: 30,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.015,
          // ),

          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.1875,
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                      bottomRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => spons()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0625,
                width: MediaQuery.of(context).size.width * 0.625,
                child: Center(
                  child: Text(
                    'Sponsors',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),

          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1875,
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                      bottomLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => develop()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0625,
                width: MediaQuery.of(context).size.width * 0.625,
                child: Center(
                  child: Text(
                    'Developers',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),

          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.1875,
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                      bottomRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ourteam(),
                    ));
              },
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.0625,
                  child: Center(
                    child: Text(
                      'Our Team',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 75),
          //   child: Container(
          //     margin: EdgeInsets.only(top: 16),
          //     height: 75,
          //     width: MediaQuery.of(context).size.width * 0.625,
          //     child: Center(
          //       child: Text(
          //         'Sponsors',
          //         style: TextStyle(
          //           fontSize: 30,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //         bottomLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //       ),
          //     ),
          //   ),
          // ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0625,
          ),

          // ClipPath(
          //   clipper: CustomClipPath2(),
          //   child: Container(
          //     height: 425,
          //     width: 400,
          //     decoration: BoxDecoration(
          //       color: Colors.deepPurpleAccent,
          //     ),
          //   ),
          // )

          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.top,
              list: [
                BezierCurveSection(
                  start: Offset(400, 30),
                  top: Offset(400 / 2, 0),
                  end: Offset(0, 30),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0625),
              // Image.asset('images/Mt. B 1.png', height: 300,),
              // child: Image.asset('images/Mt. B 1.png', height: 100,),
              // child: Image.asset('images/Capture.PNG', height: 100,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // buildSocialButtons(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2225, right: MediaQuery.of(context).size.width * 0.2225, bottom: MediaQuery.of(context).size.height * 0.0375),
                    child: Image.asset(
                      'images/Group 22.png',
                    ),
                    // child: Image.asset('images/Group 22 (1).png'),
                    // child: SvgPicture.asset('images/Group 22 (1) (1).svg'),
                  ),
                  buildSocialButtons(),
                ],
              ),
              color: Colors.deepPurpleAccent,
              // height: 375,
              height: MediaQuery.of(context).size.height * 0.46875,
            ),
          )
        ],
      ),
    );
  }

  // Widget buildSocialButtons() => Card(
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [

  //       buildSocialButton(
  //         icon: FontAwesomeIcons.
  //       )

  //   ]),
  // );

  Widget buildSocialButtons() => Padding(
        padding: EdgeInsets.only(
          // left: 65,
          left: MediaQuery.of(context).size.width * 0.1825,
          right: MediaQuery.of(context).size.width * 0.1825,
          top: MediaQuery.of(context).size.height * 0.00625,
          bottom: MediaQuery.of(context).size.height * 0.00625,
        ),
        child: Card(
          color: Colors.white,
          elevation: MediaQuery.of(context).size.width * 0.025,
          child: Padding(
            // padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.0225, top: MediaQuery.of(context).size.width * 0.02, bottom: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialButton(
                    icon: FontAwesomeIcons.instagram,
                    color: Colors.pink,
                    onClicked: () => share1(SocialMedia.instagram)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.twitter)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.youtube,
                    color: Colors.red,
                    onClicked: () => share1(SocialMedia.youtube)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.facebook)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.linkedin)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                // buildSocialButton(
                //     icon: FontAwesomeIcons.whatsapp,
                //     color: Colors.green,
                //     onClicked: () => share1(SocialMedia.whatsapp)),
                // SizedBox(
                //   width: 10,
                // ),
                // buildSocialButton(
                //   // icon: FontAwesomeIcons.phone,
                //   icon: Icons.phone,
                //   color: Colors.black,
                //   onClicked: () async {
                //     var whatsapp1 = "+919714649511";
                //     launch('tel://$whatsapp1');
                //   },
                // ),
              ],
            ),
          ),
        ),
      );

  Widget buildSocialButton({
    required IconData icon,
    Color? color,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.0875,
          height: MediaQuery.of(context).size.height * 0.04375,
          child: Center(
              child: FaIcon(
            icon,
            color: color,
            size: 35,
          )),
        ),
        onTap: onClicked,
      );

  Future share1(SocialMedia socialPlatform) async {
    final subject = 'Hello';
    final text = 'My';
    final urlShare =
        Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
    var whatsapp1 = "+919714649511";

    final urls = {
      SocialMedia.facebook: 'https://www.facebook.com/',
      SocialMedia.twitter: 'https://twitter.com/explore',
      SocialMedia.email:
          'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
      SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
      // SocialMedia.linkedin:
      //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
      // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
      SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
      SocialMedia.instagram: 'https://www.instagram.com/_ayushmodi/',
    };

    final url = urls[socialPlatform]!;

    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h - 100);
    path.quadraticBezierTo(w * 0.5, h, w, h - 100);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class CustomClipPath2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;

//     final path = Path();

//     path.quadraticBezierTo(0, 100, w * 0.5, 0);
//     path.lineTo(w, 100);
//     path.lineTo(w, h);
//     path.lineTo(0, h);
//     path.close();

//     // path.quadraticBezierTo(w * 0.5, h, w, h - 100);
//     // path.lineTo(w, 0);
//     // path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
