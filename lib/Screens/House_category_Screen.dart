import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Appbar.dart';
import 'package:tejan/Widgets/Club_card.dart';
import 'package:tejan/Widgets/Event_Card.dart';
import 'package:tejan/constants.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.125),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kPrimary,
            elevation: 0,
            flexibleSpace: Container(
              height: height * 0.125,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                color: kAppBottomNavbar,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23.65,
                  top: height * 0.060,
                  right: width * 0.062,
                ),
                child: Center(
                  child:Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/back.svg',
            width: 8.45,
            height: 16.9,
          ),
          SizedBox(width: 10),
          Text(
            'Back',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: kSecondary,
              letterSpacing: -0.01,
              height: 0,
            ),
          ),
        ],
      ),
    ),
    Text(
      'House',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: kPrimarytext,
        letterSpacing: -0.01,
        height: 0,
      ),
    ),
    SizedBox(width: 57), // Adjust this spacing as needed
  ],
)

                ),
              ),
            ),
          ),
        ),
         body: Padding(
          padding: EdgeInsets.only(
            left: width * 0.049,
          ),
          child: EventCard(scrollDirection: Axis.vertical),
          
        ),
      ),
    );
  }
}
