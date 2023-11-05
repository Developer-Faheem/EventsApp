
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/constants.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5, // Adjust the number of containers as needed
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              color: kcards, borderRadius: BorderRadius.circular(20)),
          width: 278,
          height: 264,
          margin: const EdgeInsets.only(right: 20, top: 16),
          child:
              Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
            Container(
              margin: const EdgeInsets.only(top: 12.5,  left: 8.5),
              width: 253,
              height: 149,
              child: Image.asset(
                'assets/pictures/cardsPicture.png', // Replace with your image asset path
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Text('Haloween CandyLand Party', 
               style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: kSecondarytext,
                         letterSpacing: -0.01,
                         height: 0
                        ), ),
                          const SizedBox(height: 8,),
               Row(
               
                 children: [
                   Column(
                     children: [
                       Row(
                         children: [
                           SvgPicture.asset(
                                    'assets/svg/Path.svg',
                                    width: 13, // Specify the desired width
                                    height: 19, // Specify the desired height
                                  ),
                            const SizedBox(width: 8,),
                            Text('Soubois',
                            style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: kSecondarytext,
                                  letterSpacing: -0.01,
                                  height: 0
                                  ),) ,        
                                  ],
                       ),
                         const SizedBox(height: 8,),
                       Row(
                        children: [
                              SvgPicture.asset(
                            'assets/svg/star.svg',
                            width: 19, // Specify the desired width
                            height: 19, // Specify the desired height
                          ),
                           const SizedBox(width: 8,),
                            Text('4.7 Stars',
                            style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: kSecondarytext,
                                  letterSpacing: -0.01,
                                  height: 0
                                  ),) ,  
                        ],
                       )         
                     ],
                   ),
                     const SizedBox(width: 74.5,),
                    Container(
                      width: 83,
                      height: 38,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kCardButton
                      ),
                      child: Center(
                        child: Text('Join\nNow',
                        style :GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: kPrimarytext,
                                    letterSpacing: -0.01,
                                    height: 0
                                    )
                        ),
                      ),
                    )  ,
                       
                 ],
               ),
              ],),
            )
          
            

          ]),
        );
      },
    );
  }
}