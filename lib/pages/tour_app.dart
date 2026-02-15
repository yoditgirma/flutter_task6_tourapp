import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:tour_app/pages/details_screen.dart';
import 'package:tour_app/pages/home_screen.dart';
import 'package:tour_app/pages/profile_screen.dart';

class TourApp extends StatefulWidget {
  const TourApp({super.key});
  @override
  State<TourApp> createState() => _TourAppState();
}

class _TourAppState extends State<TourApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getBody(), bottomNavigationBar: getFooter());
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomeScreen(),
        DetailsScreen(
          onTabChange: (index) {
            setState(() {
              activeTab = index;
            });
          },
        ),
        ProfileScreen(),
      ],
    );
  }

  Widget getFooter() {
    List<IconData> icons = [Icons.home, Icons.explore, Icons.person_outline];

    List<String> lables = ["Home", "Explore", "Profile"];
    return Container(
      height: 64,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(icons.length, (index) {
          return Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(
                  icons[index],
                  color: activeTab == index ? primaryColor : downIconColor,
                ),
              ),
              Text(
                lables[index],
                style: TextStyle(
                  color: activeTab == index ? primaryColor : downIconColor,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
