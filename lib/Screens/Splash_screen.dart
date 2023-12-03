import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tejan/Screens/User_screen.dart';
import 'package:tejan/Widgets/Bottom_Navbar.dart';
import 'package:tejan/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToUserScreen();
  }

  Future _navigateToUserScreen() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool isFirstLaunch = prefs.getBool('firstLaunch') ?? true;

    await Future.delayed(const Duration(milliseconds: 1500), () {});

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()));
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context)
    //         //  => isFirstLaunch
    //         //     ? CustomBottomNavigationBar()
    //         //     :
    //              CustomBottomNavigationBar()));
  }
  //CustomBottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Center(
        child: Hero(
          tag: 'union',
          child: SvgPicture.asset(
            'assets/svg/Union.svg',
            width: 93, // Specify the desired width
            height: 89.86, // Specify the desired height
          ),
        ),
      ),
    );
  }
}
