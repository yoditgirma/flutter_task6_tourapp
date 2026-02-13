import 'package:flutter/material.dart';
import 'package:tour_app/pages/constants.dart';
import 'package:tour_app/pages/tour_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour App',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: bgColor)),
      home: TourApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
