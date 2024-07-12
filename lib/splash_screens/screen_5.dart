import 'package:flutter/material.dart';
import 'package:my_property/auth/sifn_in.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/splash_1.png",
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    );
                  },
                ),
              ),
            ), // Spacer between GridView and RichText
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
              height: 50,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomElevatedButton(
                  title: 'Continue with Email',
                  color: primary,
                  textColor: textcolor,
                  size: MediaQuery.of(context).size.width / 1,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sign_in()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 220,),
            Center(child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'Don\'t have an account? ' ),
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
