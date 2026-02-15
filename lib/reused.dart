import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Destination cards
class Destination extends StatelessWidget {
  final String img, title, subtitle;
  const Destination({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: paddingValue),
          height: size.height * 0.25,
          width: size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            color: downIconColor,
          ),
        ),

        Positioned(
          bottom: 25,
          left: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: bgColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(subtitle, style: TextStyle(fontSize: 14, color: bgColor)),
            ],
          ),
        ),
      ],
    );
  }
}

// Titles

class Titles extends StatelessWidget {
  final String txt;
  const Titles({super.key, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingValue),
      child: Text(
        txt,
        style: TextStyle(
          color: titleColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

//HIGHLIGHT CARDS
class HighlightCards extends StatelessWidget {
  final String img, text;
  final Color color;
  const HighlightCards({
    super.key,
    required this.img,
    required this.text,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.height * 0.2,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
        ),

        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(img, width: 25, height: 25),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: bgColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
