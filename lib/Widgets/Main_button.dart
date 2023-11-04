import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Bottom_Navbar.dart';
import 'package:tejan/Screens/User_Screen_Form.dart';
import 'package:tejan/constants.dart';

class MainButton extends StatelessWidget {
  String buttonText;
  MainButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(buttonText=='Get Started'){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const UserScreenForm()));
        }else if(buttonText=='Skip'){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CustomBottomNavigationBar()));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: kSecondary,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 288,
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
        )),
      ),
    );
  }
}
