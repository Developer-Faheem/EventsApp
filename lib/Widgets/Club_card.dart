
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/constants.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({super.key});

  @override
  Widget build(BuildContext context) {
 return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5, // Adjust the number of containers as needed
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              color: kcards, borderRadius: BorderRadius.circular(20)),
          width: 296,
          height: 198,
          margin: const EdgeInsets.only(right: 20, top: 16),
          child: 
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin: const EdgeInsets.only(top:12,right: 13),
                width: 273,
                height: 167,
                decoration: const BoxDecoration(

                ),
                child: Image.asset('assets/pictures/clubs.png'), // Replace with your image
              ),
              Positioned(
                top: 35,
                right: 40,
                child: Container(
                  width: 108,
                  height: 19,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:kCardButton ), // Customize the color as needed
                  alignment: Alignment.center,
                  child: Text(
                    'Top User Choice',
                   style :GoogleFonts.montserrat(
                                     fontWeight: FontWeight.w700,
                                      fontSize: 9,
                                      color: kPrimarytext,
                                    letterSpacing: -0.01,
                                    height: 0
                                    )
                  ),
                ),
              ),

              Positioned(
                top: 120,
                left: 40,
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:kCardButton ),
                       alignment: Alignment.center,
                    child: Text(
                    '#1',
                     style :GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: kPrimarytext,
                                    letterSpacing: -0.01,
                                    height: 0
                                    )
                    ), // Customize the color as needed
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(
                      'Soubois',
                     style :GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: kSecondarytext,
                                      letterSpacing: -0.01,
                                      height: 0
                                      )
                    ),
                    Text(
                      'Downtown, Monchaster',
                     style :GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: kSecondarytext,
                                      letterSpacing: -0.01,
                                      height: 0
                                      )
                    ),
                    ],)
              
              
                  ],
                ),
              )
            ],
          )
        );
      },
        
      );
  }
}
