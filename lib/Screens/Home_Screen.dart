import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
         resizeToAvoidBottomInset: false,
        body: PreferredSize(
          preferredSize: const Size.fromHeight(243),
          child: Stack(
            children: [
              Container(
                color: kPrimary,
              ),
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
                child:  Padding(
                  padding:  EdgeInsets.only(left:  width * 0.049,top:height*0.075,right: width*0.062 ),
                  child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/notification-bell.svg',
                          width: 18,  // Specify the desired width
                          height: 19.06,  // Specify the desired height
                        ),

                        Column(
                          children: [
                            Text('Current Location',style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: kPrimarytext,
                                    letterSpacing: -0.01,
                                    height: 0
                                    )),
                                      Text(' Montreal, QC',style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: kPrimarytext,
                                    letterSpacing: -0.01,
                                    height: 0
                                    )),
                          ],
                        ),

                        SvgPicture.asset(
                          'assets/svg/notification-bell.svg',
                          width: 18,  // Specify the desired width
                          height: 19.06,  // Specify the desired height
                        ),
                      ],
                     ),
                  SizedBox(height: height*0.06,),
                  Container(
                    height:27 ,
                    decoration:const  BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.white, width: 2.0), // Left border with color and width
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:10,left: 10),
                      child: TextField(
                        
                        cursorColor: Colors.white,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle:  GoogleFonts.montserrat(
                          color: kPrimarytext,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                          focusedBorder:const  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent), // Transparent border for focus
                          ),
                          enabledBorder:const  UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent), // Transparent border for enabled
                          ),
                        ),
                      ),
                    ),
                  )


                     
                                
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: height * 0.24,
                  left:  width * 0.049, 
                  
                
                  child: CategoryCards(),
                  ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.42, left: width * 0.049),
                child: SizedBox(
                  width: double.infinity,
               //   color: Colors.red,
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Trending Events this Week',style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                      letterSpacing: -0.01,
                                      height: 0
                                      )),
                          SizedBox(
                            height:
                                264, // Set the desired height of the horizontal list
                            child: EventCard(),   
                          ),
                            const SizedBox(height:20 ,),
                         Text('Must Go Clubs in Montreal',style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                      letterSpacing: -0.01,
                                      height: 0
                                      )),
                         const SizedBox(
                            height:
                                198, // Set the desired height of the horizontal list
                            child: ClubCard(),   
                          ),
                         const SizedBox(height:20 ,),
                             Text('[Category]',style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                      letterSpacing: -0.01,
                                      height: 0
                                      )),
            
                  
                                      SizedBox(
                            height:
                                264, // Set the desired height of the horizontal list
                            child: EventCard(),   
                          ),

                             const SizedBox(height:20 ,),
                             Text('[Category]',style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                      letterSpacing: -0.01,
                                      height: 0
                                      )),
            
                  
                                      SizedBox(
                            height:
                                264, // Set the desired height of the horizontal list
                            child: EventCard(),   
                          ),

                              const SizedBox(height:16 ,),
                         Text('Browse by Category',style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                      letterSpacing: -0.01,
                                      height: 0
                                      ),),
                                      const SizedBox(height:20 ,),
                                     
                            SizedBox(
                            height:
                                130, // Set the desired height of the horizontal list
                            child: CategoryCards(),   
                          ),
                          const SizedBox(height:20 ,),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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

class CategoryCards extends StatelessWidget {
   CategoryCards({super.key});

  
   final List<Map<String, String>> categoryList = [
    {
      'url': 'assets/svg/houseIcon.svg',
      'name': 'House',
    },
    {
      'url': 'assets/svg/afro.svg',
      'name': 'Afro',
    },
    {
      'url': 'assets/svg/fancyBars.svg',
      'name': 'Fancy Bars',
    },
     {
      'url': 'assets/svg/afro.svg',
      'name': 'Afro',
    },
    {
      'url': 'assets/svg/fancyBars.svg',
      'name': 'Fancy Bars',
    },
  ];

  @override
  Widget build(BuildContext context) {
   return SizedBox(
    height: 130,
    width: MediaQuery.of(context).size.width*1,
     child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length, // Adjust the number of containers as needed
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                color: kSmallcards, borderRadius: BorderRadius.circular(20)),
            width: 107,
            height: 130,
                    margin: const EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               
               SizedBox(height: 8,),

              SvgPicture.asset(
                      categoryList[index]['url'].toString(),
                     // width: 72, // Specify the desired width
                     // height: 69.57, // Specify the desired height
                   ),

              Container( decoration: BoxDecoration(
                color: kAppBottomNavbar, borderRadius: BorderRadius.circular(20)),
            width: 76,
            height: 22,
            alignment: Alignment.center,
            child: Text(
                        categoryList[index]['name'].toString(),
                        style :GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: kPrimarytext,
                        letterSpacing: -0.01,
                        height: 0
                        )
                      ) ,
            )
            ],),
          );}),
   );
  }
}
