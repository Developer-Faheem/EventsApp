import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Bottom_Navbar.dart';
import 'package:tejan/Screens/User_Screen_Form.dart';
import 'package:tejan/constants.dart';

class MainButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  MainButton({super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * 0.72,
      height: 55,
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 19,
            color: kPrimarytext,
            letterSpacing: -0.02,
          ),
        ),
      ),
    );
  }
}
