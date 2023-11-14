import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Appbar.dart';
import 'package:tejan/Widgets/Category_Cards.dart';
import 'package:tejan/Widgets/Club_card.dart';
import 'package:tejan/Widgets/Event_Card.dart';
import 'package:tejan/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
        resizeToAvoidBottomInset: false,
        body: PreferredSize(
          preferredSize: const Size.fromHeight(243),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                // Container(
                //   color: kPrimary,
                // ),
                Container(
                  height: height * 0.31,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    color:
                        kAppBottomNavbar, // Set your desired background color here
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.049,
                        top: height * 0.075,
                        right: width * 0.062),
                    child:const AppBarContent(),
                  ),
                ),
                Positioned(
                  top: height * 0.24,
                  left: width * 0.049,
                  child: CategoryCards(),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.45, left: width * 0.049),
                  child: SizedBox(
                    width: double.infinity,
                   
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Trending Events this Week',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kSecondary,
                                  letterSpacing: -0.01,
                                  height: 0)),
                                  SizedBox(height: height*0.015,),
                          const SizedBox(
                            height:
                                264, // Set the desired height of the horizontal list
                            child: EventCard(scrollDirection:Axis.horizontal ,),
                          ),
                           SizedBox(
                            height: height*0.04,
                          ),
                          Text('Must Go Clubs in Montreal',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kSecondary,
                                  letterSpacing: -0.01,
                                  height: 0)),
                                    SizedBox(height: height*0.015,),
                          const SizedBox(
                            height:
                                199, // Set the desired height of the horizontal list
                            child: ClubCard(scrollDirection: Axis.horizontal),
                          ),
                           SizedBox(
                            height: height*0.04,
                          ),
                          Text('[Category]',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kSecondary,
                                  letterSpacing: -0.01,
                                  height: 0)),
                                    SizedBox(height: height*0.015,),
                          const SizedBox(
                            height:
                                264, // Set the desired height of the horizontal list
                            child: EventCard(scrollDirection: Axis.horizontal,),
                          ),
                           SizedBox(
                          height: height*0.04,
                          ),
                          Text('[Category]',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kSecondary,
                                  letterSpacing: -0.01,
                                  height: 0)),
                                   SizedBox(height: height*0.015,),
                          const SizedBox(
                            height:
                                264, // Set the desired height of the horizontal list
                            child: EventCard(scrollDirection:Axis.horizontal ,),
                          ),
                           SizedBox(
                         height: height*0.04,
                          ),
                          Text(
                            'Browse by Category',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: kSecondary,
                                letterSpacing: -0.01,
                                height: 0),
                          ),
                           SizedBox(height: height*0.017,),
                         
                          SizedBox(
                            height:
                                130, // Set the desired height of the horizontal list
                            child: CategoryCards(),
                          ),
                           SizedBox(
                         height: height*0.04,
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
