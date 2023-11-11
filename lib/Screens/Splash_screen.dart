import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tejan/Screens/Event_Screen.dart';
import 'package:tejan/Screens/User_screen.dart';
import 'package:tejan/Widgets/Bottom_Navbar.dart';
import 'package:tejan/constants.dart';

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
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => UserScreen()));
  }
  //CustomBottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Center(
        child: SvgPicture.asset(
          'assets/svg/Union.svg',
          width: 93, // Specify the desired width
          height: 89.86, // Specify the desired height
        ),
      ),
    );
  }
}




// class NewAppBar extends StatefulWidget {
//   final String? currentIcon;

  
//   const NewAppBar({Key? key, this.currentIcon}) : super(key: key);

//   @override
//   State<NewAppBar> createState() => _NewAppBarState();
// }

// class _NewAppBarState extends State<NewAppBar> {

// void _showWhiteDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return SettingsDialog(); // Use the SettingsDialog widget
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 1000,
//       //child: SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const SizedBox(height: 15),
//           _buildIcon(
//             'Home',
//             'assets/images/home.png',
//             currentIcon == 'Home',
//             () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const PathMenu()),
//               );
//             },
//           ),
//          const SizedBox(height: 15),
//           _buildIcon(
//             'Resources',
//             'assets/images/lessons.png',
//             currentIcon == 'Resources',
//             () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ResourcesPage()),
//               );
//             },
//           ),
//          const SizedBox(height: 15),
//           _buildIcon(
//             'Calendar',
//             'assets/images/calendar.png',
//             currentIcon == 'Calendar',
//             () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const Calendar()),
//               );
//             },
//           ),
//           const SizedBox(height: 15),
//           _buildIcon(
//             'Profile',
//             'assets/images/profile.png',
//             currentIcon == 'Profile',
//             () {
//               // Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ProfilePage()),
//               );
//             },
//           ),
//          const SizedBox(height: 15),
//           _buildIcon(
//             'Questions',
//             'assets/images/questionshand.png',
//             currentIcon == 'Queestions',
//             () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ProfilePage()),
//               );
//             },
//           ), 
//          const SizedBox(height: 300),
//           _buildIcon(
//             'Contact Us',
//             'assets/images/profile.png',
//             currentIcon == 'Contact Us',
//             () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ProfilePage()),
//               );
//             },
//           ),
//           const SizedBox(height: 15),
//           _buildIcon(
//             'Settings',
//             'assets/images/profile.png',
//             currentIcon == 'Settings',
//             () {
//                 _showWhiteDialog(context);
//             },
//           ),

//         ],
//       ),
//       //),
//     );
//   }

//   Widget _buildIcon(
//     String title,
//     String imagePath,
//     bool isSelected,
//     VoidCallback onTap,
//   ) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 35,
//           width: 35,
//           child: InkWell(
//             onTap: onTap,
//             child: Image.asset(imagePath),
//           ),
//         ),
//         Text(
//           title,
//           style: TextStyle(
//             color: isSelected ? Colors.black : Colors.grey,
//             fontFamily: 'Rubik',
//             fontWeight: FontWeight.w500,
//             fontSize: 12,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SettingsDialog extends StatefulWidget {
//   const SettingsDialog({super.key});

//   @override
//   State<SettingsDialog> createState() => _SettingsDialogState();
// }

// class _SettingsDialogState extends State<SettingsDialog> {

//   bool isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     return  AlertDialog(
//                         surfaceTintColor: Colors.white,
//                         title: const Center(child: Text('Settings')),
//                         titlePadding: EdgeInsets.fromLTRB(50, 50, 50, 25),
//                         content: Container(
//                           // color: Colors.white,
//                           width: 700,
//                           height: 400,
//                           // Set a specific width for the content
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [

//                               // First Column: Logo and Text
//                               Column(
//                                 children: [
//                                   // Container 1
//                                   Container(
//                                     width:
//                                         250, // Set a specific width for the container
//                                     decoration: BoxDecoration(
//                                       color: Colors.grey,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     padding: EdgeInsets.all(10),
//                                     child: const Row(
//                                       children: [
//                                         Icon(Icons.account_circle,
//                                             color: Colors.white),
//                                                SizedBox(width: 30,),
//                                         Text('My Account',
//                                             style:
//                                                 TextStyle(color: Colors.white)),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(height: 10),

//                                   // Container 2
//                                   Container(
//                                     width:
//                                         250, // Set a specific width for the container
//                                     decoration: BoxDecoration(
//                                       color: Colors.grey,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     padding: EdgeInsets.all(10),
//                                     child: Row(
//                                       children: [
//                                         Icon(Icons.info, color: Colors.white),
//                                         SizedBox(width: 30,),
//                                         Text('Onboarding tutorial',
//                                             style:
//                                                 TextStyle(color: Colors.black)),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(height: 10),

//                                   // Container 3
//                                   Container(
//                                     width:
//                                         250, // Set a specific width for the container
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     padding: EdgeInsets.all(10),
//                                     child: const Row(
//                                       children: [
//                                         Icon(Icons.exit_to_app,
//                                             color: Colors.black),
//                                                SizedBox(width: 30,),
//                                         Text('Sign out',
//                                             style:
//                                                 TextStyle(color: Colors.white)),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(height: 10),

//                                   //Container 4
//                                   Container(
//                                     width:
//                                         250, // Set a specific width for the container
//                                     decoration: BoxDecoration(
//                                       color: Colors.grey,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     padding: EdgeInsets.all(10),
//                                     child: Row(
//                                       children: [
//                                         Icon(Icons.info, color: Colors.white),
//                                         SizedBox(width: 30,),
//                                         Text('Onboarding tutorial',
//                                             style:
//                                                 TextStyle(color: Colors.black)),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(width: 10), // Add space between columns

//                               // Second Column: TextFields
//                               Column(
//                                 children: [
//                                   // Email
//                                  Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text("Email:    ",
//                                   style:TextStyle(color: Colors.grey),
//                           ),
//                                   Container(
//                                     width: 275, // Adjust the width as needed
//                                     child: TextField(
//                                       decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(10.0),
//                                         ),
//                                         labelText: '',
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                                   SizedBox(height: 10),

//                                   // Display Name
//                                    Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text("Display Name:    ",
//                                   style:TextStyle(
//                                     color: Colors.grey),
//                                    ),
//                                   Container(
//                                     width: 275, // Adjust the width as needed
//                                     child: TextField(
//                                       decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                           borderRadius: BorderRadius.circular(10.0),
//                                         ),
//                                         labelText: '',
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                                   SizedBox(height: 10),

//                                   // Birthday
//                                    Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Birthday:    ",
//                                   style:TextStyle(color: Colors.grey),
//                           ),
//                           Container(
//                             width: 275, // Adjust the width as needed
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                                 labelText: '',
//                               ),
//                             ),
//                           ),
//                         ],
//                        ),
//                         SizedBox(height: 10),

//                         //Gender
//                         Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Gender:    ",
//                                   style:TextStyle(color: Colors.grey),
//                           ),
//                           Container(
//                             width: 275, // Adjust the width as needed
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                                 labelText: '',
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),

//                       //Toggle
//                        Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text("Enable Period Calendar",
//                                   style:TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 12),
//                           ),
//                          Switch(
//                           activeColor: Colors.blue,
//                           value: isSwitched,
//                           onChanged: (value){
//                            setState ((){
//                             isSwitched = value;
//                             });
//                           },
//                         ),
//                         ],
                        
//                       ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         actions: [
//                          TextButton(
//                         onPressed: () {
//                         Navigator.of(context).pop(); // Close the popup
//                         },
//                         child: ClipRRect(
//                         borderRadius: BorderRadius.circular(20), // Set the radius to make it rounded
//                         child: Container(
//                         color: Colors.lightBlue,
//                         child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 14),
//                         child: Text(
//                         'Save Changes',
//                         style: TextStyle(
//                         color: Colors.black,
//                         ),
//                         ),
//                         ),
//                         ),
//                         ),
//                         )
//                                                 ],
//                       );
//   }
// }