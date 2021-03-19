import 'package:bitrise_monitor/grant_access/grant_access_screen.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Color(0xFF381A4B),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => GrantAccessScreen(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Text(
            "Get Started",
            style: TextStyle(
              color: Color(0xFF381A4B),
              fontSize: 22,
              fontFamily: "TTNorms",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
