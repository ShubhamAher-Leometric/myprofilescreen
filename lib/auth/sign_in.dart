import 'package:flutter/material.dart';
import 'package:my_property/auth/forgot_password.dart';
import 'package:my_property/auth/otp_screen.dart';
import 'package:my_property/auth/register_screen.dart';
import 'package:my_property/home_screens/homescreen.dart';
import 'package:my_property/menu.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _SignInState();
}

class _SignInState extends State<Sign_in> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'Let\'s '),
                  TextSpan(
                    text: 'Sign In?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 18, // Adjust font size as needed
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70, // Increase height as needed
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 0.0), // Adjusted horizontal padding
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                    hintText: "Password",
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child: Text("Forgot password?"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                },),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                  child: Text(
                    _isObscured ? "Show password" : "Hide password",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: CustomElevatedButton(
                title: 'Login',
                color: primary,
                textColor: textcolor,
                size: MediaQuery.of(context).size.width / 2,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenuPage()),
                  );
                },
              ),
            ),
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
    );
  }
}
