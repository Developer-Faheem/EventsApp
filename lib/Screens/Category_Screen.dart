import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/Event_Screen.dart';
import 'package:tejan/Widgets/Appbar.dart';
import 'package:tejan/Widgets/Club_card.dart';
import 'package:tejan/Widgets/Event_Card.dart';
import 'package:tejan/constants.dart';

class HouseScreen extends StatelessWidget {
  final int index;
  HouseScreen({super.key, required this.index});

  final List<Map<String, String>> categoryList = [
    {
      'url': 'assets/svg/todayHits.svg',
      'name': 'Today\'s hits',
    },
    {
      'url': 'assets/svg/houseCategory.svg',
      'name': 'House/tech',
    },
    {
      'url': 'assets/svg/edm.svg',
      'name': 'EDM',
    },
    {
      'url': 'assets/svg/afro.svg',
      'name': 'Afro',
    },
    {
      'url': 'assets/svg/latin.svg',
      'name': 'latin',
    },
    {
      'url': 'assets/svg/speakeasy.svg',
      'name': 'speakeasy',
    },
    {
      'url': 'assets/svg/fancyBars.svg',
      'name': 'bars',
    },
    {
      'url': 'assets/svg/rap.svg',
      'name': 'Rap fit',
    },
    {
      'url': 'assets/svg/karoake.svg',
      'name': 'Karaoke',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String selectedCategory = categoryList[index]['name'].toString();

    return Container(
      color: kPrimary,
      child: SafeArea(
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
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
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
                        selectedCategory,
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
                  )),
                ),
              ),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('events')
                .where('eventCategory', isEqualTo: selectedCategory)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              // If the data has been loaded successfully
              var events = snapshot.data!.docs;
              print(events.length);

              return Padding(
                padding: EdgeInsets.only(left: width * 0.049),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: events.length,
                  itemBuilder: (BuildContext context, int index) {
                    var eventData =
                        events[index].data() as Map<String, dynamic>;

                    // Pass eventData to your EventCard widget
                    return EventCard(data: eventData);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
