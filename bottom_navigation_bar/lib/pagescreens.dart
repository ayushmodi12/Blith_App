/*

import 'package:bottom_navigation_bar/introscreens/s1.dart';
import 'package:bottom_navigation_bar/introscreens/s2.dart';
import 'package:bottom_navigation_bar/introscreens/s3.dart';
import 'package:bottom_navigation_bar/o/sp.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class pgsc extends StatefulWidget {
  const pgsc({Key? key}) : super(key: key);

  @override
  State<pgsc> createState() => _pgscState();
}

class _pgscState extends State<pgsc> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(
                () {
                  onLastPage = (index == 2);
                },
              );
            },
            children: [
              intros1(),
              intros2(),
              intros3(),
            ],
          ),
          //
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // if (!onLastPage)
                  //   GestureDetector(
                  //     onTap: () {
                  //       _controller.jumpToPage(2);
                  //     },
                  //     child: Text(
                  //       'skip',
                  //       style: TextStyle(color: Colors.white, fontSize: 18),
                  //     ),
                  //   ),
                  if (!onLastPage)
                    TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              // MediaQuery.of(context).size.width * 0.0625),
                              20,
                            ),
                            // side: BorderSide(color: Colors.white),
                            // side: BorderSide(color: Color.fromARGB(255, 24, 184, 224)),
                            side: BorderSide(color: Color.fromARGB(255, 14, 112, 137)),
                          ),
                        ),
                      ),
                      child: Text(
                        'skip',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  // GestureDetector(
                  //   onTap: () {
                  //     _controller.jumpToPage(2);
                  //   },
                  //   child: Text(
                  //     'skip',
                  //     style: TextStyle(color: Colors.white, fontSize: 18),
                  //   ),
                  // ),
                  SmoothPageIndicator(
                    effect: const WormEffect(
                      activeDotColor: Color.fromARGB(137, 255, 255, 255),
                      dotHeight: 13,
                      dotColor: Colors.blue,
                      dotWidth: 13,
                    ),
                    controller: _controller,
                    count: 3,
                  ),
                  //
                  onLastPage
                      // ? GestureDetector(
                      //     onTap: () {
                      //       Navigator.push(context,
                      //           MaterialPageRoute(builder: (context) {
                      //         return LoginPage();
                      //       }));
                      //     },
                      //     child: Text(
                      //       'login',
                      //       style: TextStyle(color: Colors.white, fontSize: 18),
                      //     ),
                      //   )
                     ? TextButton(
                      onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));  
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              // MediaQuery.of(context).size.width * 0.0625),
                              40,
                            ),
                            // side: BorderSide(color: Colors.white),
                            // side: BorderSide(color: Color.fromARGB(255, 24, 184, 224)),
                            side: BorderSide(color: Color.fromARGB(255, 14, 112, 137)),
                          ),
                        ),
                      ),
                      child: Text(
                        'login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                      // : GestureDetector(
                      //     onTap: () {
                      //       _controller.nextPage(
                      //         duration: Duration(milliseconds: 500),
                      //         curve: Curves.easeIn,
                      //       );
                      //     },
                      //     child: Text(
                      //       'next',
                      //       style: TextStyle(color: Colors.white, fontSize: 18),
                      //     ),
                      //   ),
                      : TextButton(
                      onPressed: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              // MediaQuery.of(context).size.width * 0.0625),
                              40,
                            ),
                            // side: BorderSide(color: Colors.white),
                            side: BorderSide(color: Color.fromARGB(255, 14, 112, 137)),
                          ),
                        ),
                      ),
                      child: Text(
                        'next',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                ],
              ))
        ],
      ),
    );
  }
}
*/
