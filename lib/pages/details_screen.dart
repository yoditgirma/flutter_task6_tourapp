import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:tour_app/reused.dart';

class DetailsScreen extends StatelessWidget {
  final Function(int) onTabChange;
  const DetailsScreen({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: getAppBar(), body: getBody(context));
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: appbarColor,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          onTabChange(0);
        },
        icon: Icon(Icons.arrow_back, color: bgColor),
      ),
      title: Text(
        "Trail Details",
        style: TextStyle(fontSize: 16, color: bgColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.library_add, color: bgColor),
        ),
      ],
    );
  }

  Widget getBody(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeroSection(
            img: "images/chenek.jpg",
            title: "Chenek Trail",
            subtitle: "5.2 km - Moderate",
          ),

          Padding(
            padding: const EdgeInsets.all(paddingValue),
            child: Text(
              "Scenic route with stunning views and wildlife sightings.",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(paddingValue),
            child: Text(
              "Info",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          InfoCards(
            icon: Icons.watch_later_outlined,
            text: "Duration: 3-4 hours",
          ),

          SizedBox(height: 20),
          InfoCards(icon: Icons.trending_up, text: "Elevation Gain: 600 m"),

          Padding(
            padding: const EdgeInsets.all(paddingValue),
            child: Text(
              "Key Wildlife",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingValue),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WildLifeCard(img: "images/monkey.png", txt: "Gelada Monkeys"),
                WildLifeCard(img: "images/ibex.png", txt: "Walia Ibex"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(paddingValue),
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: size.height,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(blurRadius: 10, offset: Offset(0, 4)),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Start Hike",
                      style: TextStyle(color: bgColor, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
