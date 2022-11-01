import 'auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "images/WhatsApp Image 2022-10-16 at 15.43.01.jpg"
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
                  Text("Hello"
                    , style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold
                    ),),
                  Text("Sign into your account"
                    , style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500]
                    ),),
                  SizedBox(height: 40,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.5)
                          )

                        ]
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "email-id",
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
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.5)
                          )

                        ]
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "password",
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
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Expanded(child:Container()),
                      Text("Forgot your Password"
                        , style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[500]
                        ),),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 60,),
            GestureDetector(
              onTap: (){
                AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
                FocusScope.of(context).unfocus();
              },
              child: Container(
                width: w* 0.5,
                height: h*0.08,
                decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: AssetImage(
                        "images/WhatsApp Image 2022-10-16 at 15.43.011.jpg"
                    ),
                        fit: BoxFit.cover


                    )

                ),
                child: Center(
                  child: Text("Sign in"
                    , style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),),
                ),
              ),
            ),
            SizedBox(height: w*0.2,),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Don\'t have an Account?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                    text: 'Signup',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(()=>Signup());
                      }
                ),
              ]),
            ),

          ],
        ),
      ),
    );
  }






}