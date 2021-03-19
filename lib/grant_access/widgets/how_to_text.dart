import 'package:flutter/material.dart';

class HowToText extends StatelessWidget {
  const HowToText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Text(
        "How to get a token?",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: "TTNorms",
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
