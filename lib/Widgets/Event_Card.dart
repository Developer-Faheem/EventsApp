import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/Event_Screen.dart';
import 'package:tejan/constants.dart';

class EventCard extends StatelessWidget {
  Map<String, dynamic> data;

  EventCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventScreen(
              data: data,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: kcards, borderRadius: BorderRadius.circular(20)),
        width: 278,
        height: 264,
        margin: const EdgeInsets.only(right: 20, top: 8, bottom: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(
              top: 12.5,
              left: width * 0.038,
              right: width * 0.038,
              bottom: height * 0.006,
            ),
            width: width * 0.86,
            height: 149,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10.0), // Adjust the radius as needed
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0), // Same radius as above
              child: Image.network(
                data['eventImageUrl'], // Replace with your image URL
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.045, right: width * 0.045),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['eventName'],
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: kSecondarytext,
                      letterSpacing: -0.01,
                      height: 0),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/locationIcon.svg',
                              width: 13, // Specify the desired width
                              height: 19, // Specify the desired height
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              data['venueName'],
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: kSecondarytext,
                                  letterSpacing: -0.01,
                                  height: 0),
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/star.svg',
                              width: 19, // Specify the desired width
                              height: 19, // Specify the desired height
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '${data['eventRatings']} Stars',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: kSecondarytext,
                                  letterSpacing: -0.01,
                                  height: 0),
                            ),
                          ],
                        )
                      ],
                    ),
                    // const SizedBox(width: 74.5,),
                    Container(
                      width: 83,
                      height: 38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kCardButton),
                      child: Center(
                        child: Text('Join\nNow',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: kPrimarytext,
                                letterSpacing: -0.01,
                                height: 0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
