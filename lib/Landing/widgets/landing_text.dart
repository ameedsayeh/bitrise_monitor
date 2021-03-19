import 'package:flutter/material.dart';

class LandingText extends StatelessWidget {
  const LandingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Monitor & Manage your Bitrise Mobile App CI/CD from your mobile easily",
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontFamily: "TTNorms",
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
              offset: Offset(0, 2),
              color: Colors.black.withAlpha(125),
              blurRadius: 4),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
