import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otp_screen extends StatefulWidget {
  const Otp_screen({super.key});

  @override
  State<Otp_screen> createState() => _Otp_screenState();
}

class _Otp_screenState extends State<Otp_screen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final defaultPinTheme = PinTheme(
      width: screenWidth * 0.12,
      height: screenWidth * 0.13,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(50.0)
            ),
            child: Icon(Icons.arrow_back_ios,size:15,)),
      ),
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: 'Enter the '),
                TextSpan(
                  text: 'code',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Pinput(
            length: 4,
            defaultPinTheme: defaultPinTheme.copyWith(
              width: screenWidth * 0.13,
              height: screenWidth * 0.14,
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: Colors.grey),
              ),
              textStyle: TextStyle(
                color: Color(0xFF3629B7),
                fontSize: 22,
              ),
            ),
            focusedPinTheme: defaultPinTheme.copyWith(
              width: screenWidth * 0.12,
              height: screenWidth * 0.13,
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: Color(0xFF3629B7)),
              ),
              textStyle: TextStyle(
                color: Color(0xFF3629B7),
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
