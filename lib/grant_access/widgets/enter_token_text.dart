import 'package:flutter/material.dart';

class EnterTokenText extends StatelessWidget {
  const EnterTokenText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, top: 32),
      child: Text(
        "Please enter your bitrise access token",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontFamily: "TTNorms",
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
