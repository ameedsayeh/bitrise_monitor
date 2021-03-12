import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            "lib/assets/images/bitrise_logo.svg",
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "Bitrise Monitor",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: "TTNorms",
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    offset: Offset(0, 2),
                    color: Colors.black.withAlpha(125),
                    blurRadius: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
