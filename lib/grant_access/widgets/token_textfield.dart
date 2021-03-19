import 'package:flutter/material.dart';

class TokenTextField extends StatelessWidget {
  final TextEditingController textController;

  const TokenTextField({Key? key, required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        child: Center(
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                hintText: "Access Token"),
            style: TextStyle(
              color: Color(0xFF381A4B),
              fontSize: 18,
              fontFamily: "TTNorms",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
