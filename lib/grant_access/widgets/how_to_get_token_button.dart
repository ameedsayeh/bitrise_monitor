import 'package:bitrise_monitor/grant_access_tutorial/grant_access_tutorial.dart';
import 'package:flutter/material.dart';

class HowToGetTokenButton extends StatelessWidget {
  const HowToGetTokenButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => GrantAccessTutorial(),
            ),
          );
        },
        child: Text(
          "How to get a token?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: "TTNorms",
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
