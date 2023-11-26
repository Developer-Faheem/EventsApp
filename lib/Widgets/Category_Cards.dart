import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Screens/Category_Screen.dart';
import 'package:tejan/constants.dart';

class CategoryCards extends StatelessWidget {
  final int index;
  CategoryCards({required this.index});

  final List<Map<String, String>> categoryList = [
    {
      'url': 'assets/svg/todayHits.svg',
      'name': 'Today\'s Hits',
    },
    {
      'url': 'assets/svg/houseCategory.svg',
      'name': 'House/Tech',
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
      'name': 'Latin',
    },
    {
      'url': 'assets/svg/speakeasy.svg',
      'name': 'Speakeasy',
    },
    {
      'url': 'assets/svg/fancyBars.svg',
      'name': 'Bars',
    },
    {
      'url': 'assets/svg/rap.svg',
      'name': 'Rap FR',
    },
    {
      'url': 'assets/svg/karoake.svg',
      'name': 'Karaoke',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSmallcards, borderRadius: BorderRadius.circular(20)),
      width: 107,
      height: 130,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 8,
          ),
          SvgPicture.asset(
            categoryList[index]['url'].toString(),
            // width: 72, // Specify the desired width
            // height: 69.57, // Specify the desired height
          ),
          Container(
            decoration: BoxDecoration(
                color: kAppBottomNavbar,
                borderRadius: BorderRadius.circular(20)),
            width: 76,
            height: 22,
            alignment: Alignment.center,
            child: Text(categoryList[index]['name'].toString(),
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: kPrimarytext,
                    letterSpacing: -0.01,
                    height: 0)),
          )
        ],
      ),
    );
  }
}
