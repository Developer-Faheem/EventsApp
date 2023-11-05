import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tejan/Screens/Home_Screen.dart';
import 'package:tejan/Screens/Search_Screen.dart';
import 'package:tejan/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
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
        width: 390,
        height: 76,
        child: BottomNavigationBar(
           backgroundColor: kAppBottomNavbar,
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items:  [
            BottomNavigationBarItem(
             
              icon: SizedBox(
                child: SvgPicture.asset(
                      
                            'assets/svg/hameIcon.svg',
                            width: 31,
                            height: 31,
                          ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:  SizedBox(
                child: SvgPicture.asset(
                            'assets/svg/searchIcon.svg',
                              width: 31,
                            height: 31,
                          ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
      //  margin: EdgeInsets.only(bottom: -0.3),
        child: SvgPicture.asset(
          'assets/svg/Union.svg', // Replace with your image path
          height: 54,
            width: 56,
        ),
      ),
    );
  }
}


