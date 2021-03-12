import 'package:bitrise_monitor/Landing/landing_screen.dart';
import 'package:flutter/material.dart';

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bitrise Monitor",
      home: LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
