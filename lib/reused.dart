import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

// HEROSECTION CARDS
class HeroSection extends StatelessWidget {
  final String img, title, subtitle;
  const HeroSection({
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
          height: size.height * 0.38,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
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
                title,
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 25,
                  color: bgColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(subtitle, style: TextStyle(fontSize: 18, color: bgColor)),
            ],
          ),
        ),
      ],
    );
  }
}

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

// INFO CARDS
class InfoCards extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCards({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingValue),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: downIconColor.withValues(alpha: 0.1),
            ),
            child: Icon(icon, color: upIconColor.withValues(alpha: 0.7)),
          ),
          SizedBox(width: 20),
          Text(text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

// WILD LIFE CARD
class WildLifeCard extends StatelessWidget {
  final String img, txt;
  const WildLifeCard({super.key, required this.img, required this.txt});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.15,
          width: size.width * 0.45,
          decoration: BoxDecoration(
            color: downIconColor,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 10),
        Text(txt, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
