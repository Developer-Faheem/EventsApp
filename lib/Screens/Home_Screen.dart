import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tejan/FirebaseServices/Fetch_Events.dart';
import 'package:tejan/FirebaseServices/Fetch_Venues.dart';
import 'package:tejan/Screens/Event_Category_Screen.dart';
import 'package:tejan/Screens/SeeAll_Events.dart';
import 'package:tejan/Screens/MustGo_Clubs.dart';
import 'package:tejan/Screens/Venue_Category_Screen.dart';
import 'package:tejan/Widgets/Appbar.dart';
import 'package:tejan/Widgets/Category_Cards.dart';
import 'package:tejan/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> eventCategoryList = [
    {
      'url': 'assets/svg/todayHits.svg',
      'name': 'Today\'s Hits',
    },
    {
      'url': 'assets/svg/houseCategory.svg',
      'name': 'House/Tech',
    },
    {
      'url': 'assets/svg/afro.svg',
      'name': 'Afro',
    },
    {
      'url': 'assets/svg/latin.svg',
      'name': 'Latino',
    },
    {
      'url': 'assets/svg/rapFR.svg',
      'name': 'Rap FR',
    },
    {
      'url': 'assets/svg/retro.svg',
      'name': 'Retro',
    },
  ];

  final List<Map<String, String>> venueCategoryList = [
    {
      'url': 'assets/svg/fancyBars.svg',
      'name': 'Fancy Bars',
    },
    {
      'url': 'assets/svg/bars2.svg',
      'name': 'Bars',
    },
    {
      'url': 'assets/svg/shisha.svg',
      'name': 'Shisha lounge',
    },
    {
      'url': 'assets/svg/speakeasy.svg',
      'name': 'Speakeasy',
    },
    {
      'url': 'assets/svg/clubs.svg',
      'name': 'Clubs',
    },
    {
      'url': 'assets/svg/karoake.svg',
      'name': 'Karaoke',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: kPrimary,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimary,
          resizeToAvoidBottomInset: false,
          body: PreferredSize(
            preferredSize: const Size.fromHeight(243),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
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
                      child: const AppBarContent(),
                    ),
                  ),
                  Positioned(
                    top: height * 0.24,
                    left: width * 0.049,
                    child: SizedBox(
                      height: 130,
                      width: MediaQuery.of(context).size.width * 1,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              6, // Adjust the number of containers as needed
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HouseScreen(
                                            index: index,
                                            categoryList: eventCategoryList,
                                          )),
                                );
                              },
                              child: CategoryCards(
                                index: index,
                                categoryList: eventCategoryList,
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.45, left: width * 0.049),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Trending Events this Week',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                        letterSpacing: -0.01,
                                        height: 0)),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: width * 0.049),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreenCategories(
                                            title: 'Trending Events',
                                            Category: 'featuredEvent',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text('See all',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xff9D8BBA),
                                            letterSpacing: -0.01,
                                            height: 0)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height:
                                  264, // Set the desired height of the horizontal list
                              child: FetchingEvents(
                                category: 'featuredEvent',
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Must Go Clubs in Montreal',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                        letterSpacing: -0.01,
                                        height: 0)),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: width * 0.049),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MustGoClubs()),
                                      );
                                    },
                                    child: Text('See all',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xff9D8BBA),
                                            letterSpacing: -0.01,
                                            height: 0)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height:
                                  199, // Set the desired height of the horizontal list
                              child:
                                  //ClubCard(scrollDirection: Axis.horizontal),
                                  FetchingVenues(
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.04,
                            ),
                            Text(
                              'Browse Venue by Category',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kSecondary,
                                  letterSpacing: -0.01,
                                  height: 0),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            SizedBox(
                              height:
                                  305, // Set the desired height of the horizontal list
                              child: SizedBox(
                                height: 305, // Adjust the height as needed
                                width: MediaQuery.of(context).size.width * 1,
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    // crossAxisSpacing:
                                    //     8.0, // Adjust spacing as needed
                                    mainAxisSpacing:
                                        25.0, // Adjust spacing as needed
                                  ),
                                  itemCount: 6,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        //     String selectedCategory = getCategoryName(index);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                vanueCategories(
                                              index: index,
                                              categoryList: venueCategoryList,
                                            ),
                                          ),
                                        );
                                      },
                                      child: CategoryCards(
                                        index: index,
                                        categoryList: venueCategoryList,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Upcoming Events',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                        letterSpacing: -0.01,
                                        height: 0)),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: width * 0.049),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreenCategories(
                                            title: 'Upcoming Events',
                                            Category: 'upcoming',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text('See all',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xff9D8BBA),
                                            letterSpacing: -0.01,
                                            height: 0)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                                height:
                                    264, // Set the desired height of the horizontal list
                                child: FetchingEvents(
                                  category: 'upcoming',
                                  scrollDirection: Axis.horizontal,
                                )),
                            SizedBox(
                              height: height * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Events Near Me',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: kSecondary,
                                        letterSpacing: -0.01,
                                        height: 0)),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: width * 0.049),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreenCategories(
                                            title: 'Events Near Me',
                                            Category: 'nearMe',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text('See all',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xff9D8BBA),
                                            letterSpacing: -0.01,
                                            height: 0)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            SizedBox(
                              height:
                                  264, // Set the desired height of the horizontal list
                              child: FetchingEvents(
                                category: 'nearMe',
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.04,
                            ),
                            Text(
                              'Browse Event by Category',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: kSecondary,
                                  letterSpacing: -0.01,
                                  height: 0),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            SizedBox(
                              height: 305, // Adjust the height as needed
                              width: MediaQuery.of(context).size.width * 1,
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  // crossAxisSpacing:
                                  //     8.0, // Adjust spacing as needed
                                  mainAxisSpacing:
                                      25.0, // Adjust spacing as needed
                                ),
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      //     String selectedCategory = getCategoryName(index);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HouseScreen(
                                            index: index,
                                            categoryList: eventCategoryList,
                                          ),
                                        ),
                                      );
                                    },
                                    child: CategoryCards(
                                      index: index,
                                      categoryList: eventCategoryList,
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                          ]),
                    ),
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
