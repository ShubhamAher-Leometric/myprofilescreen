import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class SucessScreen extends StatefulWidget {
  const SucessScreen({super.key});

  @override
  State<SucessScreen> createState() => _SucessScreenState();
}

class _SucessScreenState extends State<SucessScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double buttonWidth = screenWidth * 0.8; // Adjust as needed

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/sucess.png', // Replace 'image_name.png' with your image asset path
                height: screenHeight * 0.2, // Adjust the height of the image
              ),
              SizedBox(height: screenHeight * 0.04),
              const Text(
                'Change password successfully',
                style: TextStyle(fontSize: 18, color:Color(0xFF3629B7)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.01),
              const Text(
                'You have successfully change password please use the new passwprd when sign in',
                style: TextStyle(fontSize: 14,),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.07),

              Center(
                child: CustomElevatedButton(
                  title: 'Ok',
                  color: primary,
                  textColor: textcolor,
                  size: MediaQuery.of(context).size.width / 2,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: screenHeight * 0.015), // 1.5% of screen height
            ],
          ),
        ),
      ),
    );
  }
}
