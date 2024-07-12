import 'package:flutter/material.dart';

class Back_button extends StatefulWidget {
  const Back_button({super.key});

  @override
  State<Back_button> createState() => _Back_buttonState();
}

class _Back_buttonState extends State<Back_button> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
