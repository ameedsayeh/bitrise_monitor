import 'package:flutter/material.dart';

class GrantAccessButton extends StatelessWidget {
  const GrantAccessButton({Key? key, required this.onClick}) : super(key: key);

  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            this.onClick();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Text(
              "Grant Access",
              style: TextStyle(
                color: Color(0xFF381A4B),
                fontSize: 22,
                fontFamily: "TTNorms",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Color(0xFF381A4B),
          ),
        ),
      ),
    );
  }
}
