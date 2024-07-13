import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                  Container(
                    height: 50,
                    width: 92,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25), // Adjust the radius as needed
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primary,
                          size: 20, // Adjust size as needed
                        ),
                        Text('Pune'),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 20, // Adjust size as needed
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icon.png",
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {},
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

          Image.asset('assets/homescreen_circle.png',height: MediaQuery.of(context).size.width/1.4,),
        ],
      ),
    );
  }
}
