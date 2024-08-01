import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/auth/login_splash.dart';

import '../UserScreens/constants/color_constants.dart';
import '../UserScreens/widget_constants/back_button.dart';
import '../UserScreens/widget_constants/custom_button.dart';


class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icon.png",
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_splash()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: appskip_btn, // Set the background color
                      foregroundColor: Colors.black, // Set the text color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Text("skip"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'Find '),
                      TextSpan(
                        text: 'perfect choice ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: 'for'),
                    ],
                  ),
                ),
                Text(
                  "your future house",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/splash_last.png",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              const CustomBackButton(),
                              SizedBox(
                                width: 15,
                              ),
                              CustomElevatedButton(
                                title: 'Next',
                                color: appprimary,
                                textColor: apptextcolor,
                                size: MediaQuery.of(context).size.width / 2,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login_splash()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
