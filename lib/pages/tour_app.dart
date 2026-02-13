import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';

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
        // HomeScreen(),
        Text("home"),
        Text("home"),

        Text("home"),
      ],
    );
  }

  Widget getFooter() {
    List<IconData> icons = [
      Icons.home,
      Icons.explore_outlined,
      Icons.person_outline,
    ];

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
                  color: activeTab == index ? primaryColor : iconColor,
                ),
              ),
              Text(
                lables[index],
                style: TextStyle(
                  color: activeTab == index ? primaryColor : iconColor,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  // PreferredSizeWidget getAppBar() {
  //   return AppBar(
  //     leading: IconButton(
  //       onPressed: () {},
  //       icon: Icon(Icons.menu_rounded),
  //       color: iconColor,
  //     ),
  //     title: Text(
  //       "Simien Mountains",
  //       textAlign: TextAlign.center,
  //       style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
  //     ),
  //     actions: [
  //       IconButton(
  //         icon: Icon(Icons.search),
  //         onPressed: () {},
  //         color: iconColor,
  //       ),
  //     ],
  //   );
  // }
}
