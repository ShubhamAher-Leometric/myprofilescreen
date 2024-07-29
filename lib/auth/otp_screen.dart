import 'package:flutter/material.dart';
import 'package:my_property/auth/set_new_password.dart';
import 'package:pinput/pinput.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter the code', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),),
            Text('Enter the 4 digit code that we just sent to jonathan@email.com'),
            SizedBox(height: 50,),
            Expanded(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Pinput(
                        length: 4,
                        defaultPinTheme: defaultPinTheme.copyWith(
                          width: screenWidth * 0.16,
                          height: screenWidth * 0.16,
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
                  SizedBox(height: 50,),
                  Center(
                    child: CustomElevatedButton(
                      title: 'Verify Otp',
                      color: appprimary,
                      textColor: apptextcolor,
                      size: MediaQuery.of(context).size.width / 2,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetNewPassword()),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.punch_clock,
                                  size: 20, // Adjust size as needed
                                ),
                                Text('00:20'),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('Didn’t receive the OTP? Resend OTP'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
