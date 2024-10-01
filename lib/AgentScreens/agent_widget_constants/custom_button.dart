import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgentCustomElevatedButton extends StatelessWidget {
  final title;
  final color;
  final textColor;
  final size;
  final onPressed;
  AgentCustomElevatedButton(
      {required this.title,
      required this.color,
      required this.textColor,
      required this.size,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              textStyle: const TextStyle(
                // color: Colors.white,
                fontFamily: 'MavenPro',
                fontSize: 20,
              )),
          onPressed: onPressed,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'OpenSans-SemiBold',
                  fontSize: 18),
            ),
          )),
    );
  }
}
