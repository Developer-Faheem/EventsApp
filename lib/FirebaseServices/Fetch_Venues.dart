import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/Venu_Screen.dart';
import 'package:tejan/Widgets/Club_card.dart';
import 'package:tejan/constants.dart';

class FetchingVenues extends StatelessWidget {
  final Axis scrollDirection;
  const FetchingVenues({super.key, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('venues')
          //    .where('featuredEvent', isEqualTo: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Loading...'));
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        var venues = snapshot.data!.docs;
        if (venues.isEmpty) {
          return Center(
            child: Text(
              'There are no Clubs at the moment',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: kPrimarytext,
                letterSpacing: -0.01,
                height: 0,
              ),
            ),
          );
        }

        // Sort the events based on the "onFront" boolean value
        venues.sort((a, b) {
          var aData = a.data() as Map<String, dynamic>;
          var bData = b.data() as Map<String, dynamic>;
          bool aOnFront = aData['topRated'] ?? false;
          bool bOnFront = bData['topRated'] ?? false;

          // Sorting logic: true comes first
          return bOnFront ? 1 : -1;
        });

        return ListView.builder(
          scrollDirection: scrollDirection,
          itemCount: venues.length,
          itemBuilder: (BuildContext context, int index) {
            var venueData = venues[index].data() as Map<String, dynamic>;

            // Pass eventData to your EventCard widget
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VenueScreen(
                                data: venueData,
                              )));
                },
                child: ClubCard(
                  data: venueData,
                  index: index,
                ));
          },
        );
      },
    );
  }
}
