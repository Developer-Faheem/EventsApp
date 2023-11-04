import 'package:flutter/material.dart';
import 'package:tejan/constants.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 243.0,
      width: 342.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: kAppBottomNavbar, // Set your desired background color here
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My Custom AppBar",
            style: TextStyle(
              color: Colors.white, // Set your desired text color here
              fontSize: 24.0, // Set your desired text size here
            ),
          ),
          // You can add more widgets or content here as needed
        ],
      ),
    );
  }
}