import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/Widgets/Bottom_Navbar.dart';
import 'package:tejan/Widgets/Main_button.dart';
import 'package:tejan/constants.dart';

class UserScreenForm extends StatelessWidget {
  UserScreenForm({super.key});

  final TextEditingController referralController = TextEditingController();

  void addReferral(String referralString) async {
    // Get a reference to the Firestore collection
    CollectionReference referrals =
        FirebaseFirestore.instance.collection('Referrals');

    try {
      // Add the string to the collection
      await referrals.add({
        'referralData': referralString,
      });

      //   print('Referral added successfully!');
    } catch (e) {
      print('Error adding referral: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimary,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: kPrimary,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 47, top: 52, right: 47),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/Union.svg',
                        width: 72, // Specify the desired width
                        height: 69.57, // Specify the desired height
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                  Row(
                    children: [
                      Text(
                        'Do you have\na referral\ncode ?',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            fontSize: MediaQuery.of(context).size.width * 0.112,
                            color: kPrimarytext,
                            letterSpacing: -0.041111111640930176,
                            height: 0),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.067),
                  TextField(
                    controller: referralController,
                    cursorColor: Colors.white,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          addReferral(referralController.text.toString());
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CustomBottomNavigationBar()));
                        },
                        child: Transform.scale(
                          scale: 0.6,
                          child: SvgPicture.asset(
                            'assets/svg/arrow-ios-back.svg',
                          ),
                        ),
                      ),
                      hintText: 'Example : JayDMTL',
                      hintStyle: const TextStyle(color: kTextFields),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      referralController.text == ""
                          ? GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CustomBottomNavigationBar()));
                              },
                              child: MainButton(
                                buttonText: 'Skip',
                                buttonColor: kSecondary,
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                addReferral(referralController.text.toString());
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CustomBottomNavigationBar()));
                              },
                              child: MainButton(
                                buttonText: 'Next',
                                buttonColor: kSecondary,
                              ),
                            )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
