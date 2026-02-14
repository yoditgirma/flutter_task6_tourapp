import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/heroimg.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: downIconColor,
                ),
              ),

              Positioned(
                bottom: 30,
                left: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore the Simien Mountains",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 25,
                        color: bgColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Discover the Roof of Africa",
                      style: TextStyle(fontSize: 18, color: bgColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text("Top Destinations", style: TextStyle(color: titleColor)),
        ],
      ),
    );
  }
}
