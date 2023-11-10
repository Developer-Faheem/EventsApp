import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/constants.dart';


class AppBarContent extends StatelessWidget {
  const AppBarContent({
    super.key,
  });



  @override
  Widget build(BuildContext context) {

    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/notification-bell.svg',
              width: 18, // Specify the desired width
              height: 19.06, // Specify the desired height
            ),
            Column(
              children: [
                Text(
                  'Current Location',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: kPrimarytext,
                      letterSpacing: -0.01,
                      height: 0),
                ),
                Text(
                  ' Montreal, QC',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: kPrimarytext,
                      letterSpacing: -0.01,
                      height: 0),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/svg/notification-bell.svg',
              width: 18, // Specify the desired width
              height: 19.06, // Specify the desired height
            ),
          ],
        ),
        SizedBox(
          height: height * 0.06,
        ),
       
        Padding(
          padding:  EdgeInsets.only(left:width*0.065),
          child: Container(
            height: 27,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                    color: Colors.white,
                    width: 2.0), // Left border with color and width
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: TextField(
                cursorColor: Colors.white,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: GoogleFonts.montserrat(
                    color: kPrimarytext,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .transparent
                          ), // Transparent border for focus
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .transparent
                            ), // Transparent border for enabled
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
