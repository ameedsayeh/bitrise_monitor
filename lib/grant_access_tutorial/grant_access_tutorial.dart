import 'package:flutter/material.dart';

class GrantAccessTutorial extends StatelessWidget {
  final instructions = [
    "Go to your account settings",
    "Select Security Tab",
    "From API Token, Generate a new token",
    "Write some description and choose the lifetime of the token",
    "Copy the generated token and paste it in the app",
  ];

  final images = [
    "lib/assets/images/tutorial/step1.png",
    "lib/assets/images/tutorial/step2.png",
    "lib/assets/images/tutorial/step3.png",
    "lib/assets/images/tutorial/step4.png",
    "lib/assets/images/tutorial/step5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF381A4B),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 0, right: 0),
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset(this.images[index]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      clipBehavior: Clip.hardEdge,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        this.instructions[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "TTNorms",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: 5,
          ),
        ),
      ),
    );
  }
}
