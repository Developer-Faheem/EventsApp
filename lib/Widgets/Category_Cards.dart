
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/House_category_Screen.dart';
import 'package:tejan/Screens/Must_Go_Category.dart';
import 'package:tejan/Screens/Trending_Event_category.dart';
import 'package:tejan/constants.dart';

class CategoryCards extends StatelessWidget {
   CategoryCards({super.key});

  
   final List<Map<String, String>> categoryList = [
    {
      'url': 'assets/svg/houseCategory.svg',
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
          return GestureDetector(
            onTap: (){
              if(index==0){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HouseScreen()),
            );
              }else if(index==1){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TrendingEventsScreen()),
            );
              }else if(index==2){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MustGoScreen()),
            );
              }
            },
            child: Container(
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
            ),
          );}),
   );
  }
}
