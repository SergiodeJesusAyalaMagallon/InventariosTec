import 'package:flutter/material.dart';
import 'package:inventarios/Screens/LandingPage/landing_page.dart';
import 'package:inventarios/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
      ),
      home: LandingPage(),
    );
  }
}
