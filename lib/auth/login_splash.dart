import 'package:flutter/material.dart';
import 'package:my_property/auth/register_screen.dart';
import 'package:my_property/auth/sign_in.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class Login_splash extends StatefulWidget {
  const Login_splash({super.key});

  @override
  State<Login_splash> createState() => _Login_splashState();
}

class _Login_splashState extends State<Login_splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2-30,
                      height: MediaQuery.of(context).size.width/2-30,
                      child: Image.asset(
                        "assets/splash_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2-30,
                      height: MediaQuery.of(context).size.width/2-30,
                      child: Image.asset(
                        "assets/splash_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2-30,
                      height: MediaQuery.of(context).size.width/2-30,
                      child: Image.asset(
                        "assets/splash_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2-30,
                      height: MediaQuery.of(context).size.width/2-30,
                      child: Image.asset(
                        "assets/splash_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              // Container(
              //   height:MediaQuery.of(context).size.height/1.7,
              //   child: GridView(
              //     physics: NeverScrollableScrollPhysics(),
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 10.0,
              //       mainAxisSpacing: 10.0,
              //     ),
              //     children: [
              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(15.0),
              //         child: Container(
              //           child: Image.asset(
              //             "assets/splash_1.png",
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ),
              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(15.0),
              //         child: Image.asset(
              //           "assets/splash_1.png",
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(15.0),
              //         child: Image.asset(
              //           "assets/splash_1.png",
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(15.0),
              //         child: Image.asset(
              //           "assets/splash_1.png",
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'Ready to '),
                    TextSpan(
                      text: 'explore?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child:  SizedBox(
                    width: MediaQuery.of(context).size.width/1,
                    height: 55,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: appprimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            textStyle: const TextStyle(
                              // color: Colors.white,
                              fontFamily: 'MavenPro',
                              fontSize: 20,
                            )),
                        onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sign_in()),
                          );
                        },
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email_outlined,size: 20,  color: apptextcolor,),
                              SizedBox(width: 2,),
                              Text(
                                'Continue with Email',
                                style: TextStyle(
                                    color: apptextcolor,
                                    fontFamily: 'OpenSans-SemiBold',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account? ', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text('Register',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
