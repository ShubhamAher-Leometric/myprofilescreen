import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/splash_screens/screen2.dart';
import 'package:my_property/splash_screens/screen_4.dart';
import 'package:my_property/widget_constants/back_button.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                        MaterialPageRoute(builder: (context) => Screen4()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: skip_btn, // Set the background color
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
                Text(
                  "Fast sell your property",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'in just '),
                      TextSpan(
                        text: 'one click',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
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
                          "assets/splash_3.png",
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
                                color: primary,
                                textColor: textcolor,
                                size: MediaQuery.of(context).size.width / 2,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen4()),
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
