import 'package:flutter/material.dart';

class CustomAppbarBackButton extends StatelessWidget {
  const CustomAppbarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
      ),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20, // Adjust size as needed
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
