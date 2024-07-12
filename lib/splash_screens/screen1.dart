import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/splash_screens/screen2.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Ensure the Stack covers the entire screen
        children: [
          Image.asset(
            "assets/splash_1.png",
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/icon.png",
                      height: 200,
                    ),
                    Positioned(
                      bottom: 20,
                      child: Text(
                        "Property",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Positioned Button at the Bottom
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: CustomElevatedButton(
                title: 'Let\'s Start',
                color: primary,
                textColor: textcolor,
                size: MediaQuery.of(context).size.width / 2,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
