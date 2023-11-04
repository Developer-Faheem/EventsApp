import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Main_button.dart';
import 'package:tejan/constants.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kPrimary,
        body: Padding(
          padding: const EdgeInsets.only(left: 47, top: 52),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/Union.svg',
                    width: 72, // Specify the desired width
                    height: 69.57, // Specify the desired height
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.024
              ),
              Row(
                children: [
                  Text(
                   'Events for\nEveryone',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 45,
                      color: kPrimarytext,
                     letterSpacing: -0.041111111640930176,
                     height: 0
                    ),
                  ),

                ],
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.5,),
              Row(
                children: [
                 MainButton(buttonText: 'Get Started')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
