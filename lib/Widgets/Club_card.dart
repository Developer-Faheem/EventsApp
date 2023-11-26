import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/Venu_Screen.dart';
import 'package:tejan/constants.dart';

class ClubCard extends StatelessWidget {
  Map<String, dynamic> data;
  final int index;
  ClubCard({super.key, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
            color: kcards, borderRadius: BorderRadius.circular(20)),
        width: width * 0.83,
        height: 198,
        margin: const EdgeInsets.only(right: 20, top: 8, bottom: 8),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: height * 0.017,
                right: width * 0.04,
                left: width * 0.04,
                bottom: height * 0.017,
              ),
              width: width * 0.88,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  data['venueImageUrl'], // Replace with your image URL
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
            data['topRated']
                ? Positioned(
                    top: 26,
                    right: 28,
                    child: Container(
                      width: 108,
                      height: 19,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kCardButton), // Customize the color as needed
                      alignment: Alignment.center,
                      child: Text('Top User Choice',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 9,
                              color: kPrimarytext,
                              letterSpacing: -0.01,
                              height: 0)),
                    ),
                  )
                : Container(),
            Positioned(
              bottom: 30,
              left: 30,
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: kCardButton),
                    alignment: Alignment.center,
                    child: Text('#${index + 1}',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: kPrimarytext,
                            letterSpacing: -0.01,
                            height: 0)), // Customize the color as needed
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['venueName'],
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: kSecondarytext,
                              letterSpacing: -0.01,
                              height: 0)),
                      Text(data['venueCreatedBy'],
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: kSecondarytext,
                              letterSpacing: -0.01,
                              height: 0)),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
