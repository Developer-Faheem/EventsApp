import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tejan/Screens/Home_Screen.dart';
import 'package:tejan/Screens/Search_Screen.dart';
import 'package:tejan/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _currentIndex == 0 ? HomeScreen() : SearchScreen(),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.085,
        decoration: BoxDecoration(
          color: kAppBottomNavbar,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => _onTabTapped(0),
              child: SvgPicture.asset(
                'assets/svg/hameIcon.svg',
                // width: 30,
                // height: 30,
              ),
            ),
            InkWell(
              onTap: () => _onTabTapped(1),
              child: SvgPicture.asset(
                'assets/svg/searchIcon.svg',
                // width: 31,
                // height: 31,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          // Add your floating action button logic here
        },
        child: Container(
          // width: 34,
          // height: 45,
          child: SvgPicture.asset(
            'assets/svg/Union.svg',
            height: 62,
            width: 63,
          ),
        ),
      ),
    );
  }
}
