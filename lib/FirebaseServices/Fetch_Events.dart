import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Event_Card.dart';
import 'package:tejan/constants.dart';

class FetchingEvents extends StatelessWidget {
  final String category;
  Axis scrollDirection;
  FetchingEvents(
      {super.key, required this.category, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('events')
          .where(category, isEqualTo: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Loading...'));
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        var events = snapshot.data!.docs;

        if (events.isEmpty) {
          return Center(
            child: Text(
              'There is no such event',
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
        events.sort((a, b) {
          var aData = a.data() as Map<String, dynamic>;
          var bData = b.data() as Map<String, dynamic>;
          bool aOnFront = aData['onFront'] ?? false;
          bool bOnFront = bData['onFront'] ?? false;

          // Sorting logic: true comes first
          return bOnFront ? 1 : -1;
        });

        return ListView.builder(
          scrollDirection: scrollDirection,
          itemCount: events.length,
          itemBuilder: (BuildContext context, int index) {
            var eventData = events[index].data() as Map<String, dynamic>;

            // Pass eventData to your EventCard widget
            return EventCard(data: eventData);
          },
        );
      },
    );
  }
}
