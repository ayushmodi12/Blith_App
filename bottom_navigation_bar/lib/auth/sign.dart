import 'auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'log.dart';
class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var useridController = TextEditingController();




    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    width: w,
                    height: h * 0.3,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/WhatsApp Image 2022-10-16 at 15.43.02.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    )
                    ,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start
                      ,
                      children: [
                        SizedBox(height: 70,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.5)
                                )

                              ]
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                hintText: "Email id",
                                prefixIcon: Icon(Icons.email),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.5)
                                )

                              ]
                          ),
                          child: TextField(controller: useridController,

                            decoration: InputDecoration(
                                hintText: "Username",
                                prefixIcon: Icon(Icons.account_circle_outlined),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.5)
                                )

                              ]
                          ),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,

                            decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.password),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  GestureDetector(
                    onTap: (){

                      AuthController.instance.register(emailController.text.trim(), passwordController.text.trim(), useridController.text.trim());
                      FocusScope.of(context).unfocus();
                    },
                    child: Container(
                      width: w * 0.5,
                      height: h * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: AssetImage(
                              "images/WhatsApp Image 2022-10-16 at 15.43.011.jpg"
                          ),
                              fit: BoxFit.cover


                          )

                      ),
                      child: Center(
                        child: Text("Sign up"
                          , style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ),
                  SizedBox(height: w * 0.2,),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Already have account? ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.back();
                            }),
                    ]),
                  ),

                ]

            )
        )


    );
  }
}