import 'package:flutter/material.dart';
import 'package:my_property/auth/register_screen.dart';
import 'package:my_property/auth/sign_in.dart';

import '../constants/color_constants.dart';
import '../widget_constants/custom_button.dart';

class Login_splash extends StatefulWidget {
  const Login_splash({super.key});

  @override
  State<Login_splash> createState() => _Login_splashState();
}

class _Login_splashState extends State<Login_splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:MediaQuery.of(context).size.height/2,
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/splash_1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/splash_1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/splash_1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "assets/splash_1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
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
                  color: appprimary,
                  textColor: apptextcolor,
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
