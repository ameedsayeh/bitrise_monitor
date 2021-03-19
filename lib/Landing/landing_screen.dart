import 'widgets/logo_widget.dart';
import 'widgets/get_started_button.dart';
import 'widgets/landing_text.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF381A4B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                ),
                child: LogoWidget(),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LandingText(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 64,
                      bottom: 64,
                    ),
                    child: GetStartedButton(),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
