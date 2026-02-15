import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:tour_app/reused.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: getAppBar(), body: getBody(context));
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu_rounded),
        color: upIconColor,
      ),
      title: Text(
        "Simien Mountains",
        style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: upIconColor,
        ),
      ],
    );
  }

  Widget? getBody(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingValue),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroSection(
              img: "images/heroimg.jpg",
              title: "Explore the Simien Mountains",
              subtitle: "Discover the Roof of Africa",
            ),
            Titles(txt: "Top Destinations"),

            Row(
              children: [
                Expanded(
                  child: Destination(
                    img: "images/rasdashn.jpg",
                    title: "Ras Dashen",
                    subtitle: "Highest Peak",
                  ),
                ),

                Expanded(
                  child: Destination(
                    img: "images/geech.jpg",
                    title: "Geech Camp",
                    subtitle: "Scenic View",
                  ),
                ),
              ],
            ),

            Titles(txt: "Highlights"),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingValue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: HighlightCards(
                      img: "images/mountain.svg",
                      text: "Hiking Trails",
                      color: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("images/wolf.jpg"),
                              fit: BoxFit.cover,
                            ),
                            color: downIconColor,
                          ),
                        ),

                        Positioned(
                          bottom: 10,
                          left: 25,
                          child: Text(
                            "Wildlife Viewing",
                            style: TextStyle(
                              fontSize: 16,
                              color: bgColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: HighlightCards(
                      img: "images/home.svg",
                      text: "Local Villages",
                      color: goldon,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(paddingValue),
              child: Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: downIconColor,
                  image: DecorationImage(
                    image: AssetImage("images/land.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
