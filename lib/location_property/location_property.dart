import 'package:flutter/material.dart';

import '../widget_constants/cutom_appbar_button.dart';

class Location_property extends StatefulWidget {
  const Location_property({super.key});

  @override
  State<Location_property> createState() => _Location_propertyState();
}

class _Location_propertyState extends State<Location_property> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  const CustomAppbarBackButton(),
        title: Center(child: Text("Bali",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'Found '),
                  TextSpan(
                    text: '8 ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'estates'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
