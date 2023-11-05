import 'package:flutter/material.dart';
import 'package:tejan/Widgets/Appbar.dart';
import 'package:tejan/Widgets/Club_card.dart';
import 'package:tejan/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

       double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
         resizeToAvoidBottomInset: false,
        body: Column(
          children: [
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
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.049,
                              top: height * 0.075,
                              right: width * 0.062),
                          child:const AppBarContent(),
                        ),
                      ),

          //  ClubCard(),          
          ],
        ),
      ),
    );
  }
}