import 'package:flutter/material.dart';

class AgentCustomBackButton extends StatelessWidget {
  const AgentCustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
      ),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: 20, // Adjust size as needed
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
