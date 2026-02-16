import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:tour_app/reused.dart';

class ProfileScreen extends StatelessWidget {
  final Function(int) onTabChange;
  const ProfileScreen({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: downIconColor.withValues(alpha: 0.2),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Color(0xff4A90E2),
      leading: IconButton(
        onPressed: () {
          onTabChange(0);
        },
        icon: Icon(Icons.arrow_back, color: bgColor),
      ),
      title: Text(
        "Profile",
        style: TextStyle(
          fontSize: 18,
          color: bgColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.info_outline, color: bgColor),
        ),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(paddingValue),
            child: Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(paddingValue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: downIconColor,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("images/mountain.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Simien Mountains National Park",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "UNESCO World Heritage Site",
                              style: TextStyle(color: downIconColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Learn More",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: paddingValue,
              right: paddingValue,
            ),
            child: Container(
              padding: EdgeInsets.all(paddingValue),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Visitor Guidelines",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.info_outline, size: 20),
                    ],
                  ),
                  Divider(color: downIconColor.withValues(alpha: 0.2)),
                  GuidelineList(text: "Stay on marked trails."),
                  GuidelineList(text: "Carry enough water."),
                  GuidelineList(text: "Respect wildlife."),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: paddingValue,
              left: paddingValue,
              right: paddingValue,
            ),
            child: Container(
              padding: EdgeInsets.all(paddingValue),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saved Places",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Divider(color: downIconColor.withValues(alpha: 0.2)),
                  SavedPlaces(
                    text: "Favorite Spots",
                    icon1: Icons.favorite,
                    color: Colors.red,
                  ),
                  Divider(color: downIconColor.withValues(alpha: 0.2)),
                  SavedPlaces(
                    text: "Booked Campsites",
                    icon1: Icons.campaign,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(paddingValue),
            child: Container(
              padding: EdgeInsets.all(paddingValue),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Emergency Numbers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    padding: EdgeInsets.all(paddingValue),
                    decoration: BoxDecoration(
                      color: downIconColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.phone, color: bgColor),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "911, +251 58 220 2040",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
