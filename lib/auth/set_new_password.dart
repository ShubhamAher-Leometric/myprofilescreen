import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/auth/sucess_screen.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  bool _isObscured = true;
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
                'Please enter your New Password.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Container(
                height: 70, // Increase height as needed
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: TextField(
                    obscureText: _isObscured,
                    decoration: InputDecoration(
                      hintText: "Enter New Password",
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 0.0), // Adjusted horizontal padding
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 70, // Increase height as needed
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: TextField(
                    obscureText: _isObscured,
                    decoration: InputDecoration(
                      hintText: "Confirm New Password",
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 0.0), // Adjusted horizontal padding
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: CustomElevatedButton(
                  title: 'Change Password',
                  color: appprimary,
                  textColor: apptextcolor,
                  size: MediaQuery.of(context).size.width / 1.8,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SucessScreen()),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
