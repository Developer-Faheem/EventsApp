
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/Venu_Screen.dart';
import 'package:tejan/constants.dart';

class ClubCard extends StatelessWidget {
 final Axis scrollDirection;

 
  const ClubCard({super.key, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {

     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


 return ListView.builder(
      scrollDirection:scrollDirection,
      itemCount: 5, // Adjust the number of containers as needed
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>VenueScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: kcards, borderRadius: BorderRadius.circular(20)),
             width: width*0.83,
             height: 198,
            margin: const EdgeInsets.only(right: 20, top: 8,bottom: 8),
            child: 
            Stack(
              alignment: Alignment.topRight,
              children: [
                        Container(
                  margin: EdgeInsets.only(
                    top: height * 0.017,
                    right: width * 0.022,
                    bottom: height * 0.017,
                  ),
                  width: width * 0.88,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/pictures/clubs.png', // Replace with your image asset path
                      fit: BoxFit.cover, // Adjust the fit as needed
                    ),
                  ),
                ),




                // Padding(
                //   padding:  EdgeInsets.only(right: width*0.018,top:height*0.017,bottom:height*0.017 ),
                //   child: Image.asset('assets/pictures/clubs.png',width: double.infinity,
                //   height: double.infinity,
                //   fit: BoxFit.cover,),
                // ),
                index==0?
                Positioned(
                  top: 26,
                  right: 28,
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
                ):Container(),
        
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
                      '#${index+1}',
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
          ),
        );
      },
        
      );
  }
}
