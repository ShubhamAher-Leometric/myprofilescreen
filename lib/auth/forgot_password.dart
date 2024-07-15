import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/auth/otp_screen.dart';
import 'package:my_property/auth/register_screen.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/resetpass.png',
                height: 200,
              ),
              SizedBox(height: 10),
              const Text(
                'Please enter your email address to receive the verification link',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Your Email Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: CustomElevatedButton(
                  title: 'Get otp',
                  color: appprimary,
                  textColor: apptextcolor,
                  size: MediaQuery.of(context).size.width / 2,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Otp_screen()),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
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
