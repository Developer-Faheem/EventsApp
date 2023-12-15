import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/constants.dart';

class CategoryCards extends StatelessWidget {
  final int index;
  List categoryList;
  CategoryCards({required this.index, required this.categoryList});

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
