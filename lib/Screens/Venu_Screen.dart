import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/See_Events.dart';
import 'package:tejan/Widgets/Main_button.dart';
import 'package:tejan/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class VenueScreen extends StatelessWidget {
  Map<String, dynamic> data;
  VenueScreen({Key? key, required this.data});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.46,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data[
                          'mainVenueImageUrl']), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Positioned(
              top: height * 0.060,
              left: width * 0.06,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 34.34,
                  height: 31.12,
                  decoration: BoxDecoration(
                    color: Color(0xff979797).withOpacity(0.4655),
                    borderRadius: BorderRadius.circular(
                        5.5), // Half of the width and height for circular corners
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/svg/back2.svg', // Replace with your SVG file path
                      width: 24, // Adjust the width of the SVG as needed
                      height: 24, // Adjust the height of the SVG as needed
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height *
                  0.285, // Set the top value to the height of the image container
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(5))),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.06,
                      top: height * 0.04,
                      right: width * 0.06),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['venueName'],
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: kSecondarytext,
                              letterSpacing: -0.041111111640930176,
                              height: 0),
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Row(
                          //        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.85, // 85% of the screen width
                              height: 131,
                              decoration: BoxDecoration(
                                //   color: Colors.transparent, // You can set a background color here if needed
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xff979797),
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 33,
                                          height: 31,
                                          decoration: BoxDecoration(
                                            color: kCardButton,
                                            borderRadius: BorderRadius.circular(
                                                5.5), // Half of the width and height for circular corners
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              'assets/svg/phone.svg', // Replace with your SVG file path
                                              width:
                                                  24, // Adjust the width of the SVG as needed
                                              height:
                                                  24, // Adjust the height of the SVG as needed
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Phone Number',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  color: kSecondarytext,
                                                  letterSpacing:
                                                      -0.041111111640930176,
                                                  height: 0),
                                            ),
                                            Text(
                                              data['phoneNumber'],
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: kSecondarytext,
                                                  letterSpacing:
                                                      -0.041111111640930176,
                                                  height: 0),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Divider(
                                      height: 1,
                                      color: const Color(0xff979797),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 33,
                                          height: 31,
                                          decoration: BoxDecoration(
                                            color: kCardButton,
                                            borderRadius: BorderRadius.circular(
                                                5.5), // Half of the width and height for circular corners
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              'assets/svg/location.svg', // Replace with your SVG file path
                                              width:
                                                  24, // Adjust the width of the SVG as needed
                                              height:
                                                  24, // Adjust the height of the SVG as needed
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            String link =
                                                data['eventDirections'];
                                            launchUrl(Uri.parse(link),
                                                mode: LaunchMode
                                                    .inAppBrowserView);
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Get Direction',
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                    color: kSecondarytext,
                                                    letterSpacing:
                                                        -0.041111111640930176,
                                                    height: 0),
                                              ),
                                              Text(
                                                data['venueName'],
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: kSecondarytext,
                                                    letterSpacing:
                                                        -0.041111111640930176,
                                                    height: 0),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 37,
                              height: 37,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(data[
                                      'createdByImageUrl']), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Created By',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: kSecondarytext,
                                      letterSpacing: -0.041111111640930176,
                                      height: 0),
                                ),
                                Text(
                                  data['venueCreatedBy'],
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: kSecondarytext,
                                      letterSpacing: -0.041111111640930176,
                                      height: 0),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Text(
                          'Venue Details',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: kSecondarytext,
                              letterSpacing: -0.041111111640930176,
                              height: 0),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        Text(
                          data['venueDetails'],
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: kSecondarytext,
                              letterSpacing: -0.041111111640930176,
                              height: 0),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SeeEvents(
                                                  venueName: data['venueName'],
                                                )));
                                  },
                                  child: MainButton(
                                    buttonText: 'See Events',
                                    buttonColor: kSecondary,
                                  )),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
            // Add other widgets on top of the overlay if needed
          ],
        ),
      ),
    );
  }
}
