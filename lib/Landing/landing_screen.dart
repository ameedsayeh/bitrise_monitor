import 'package:bitrise_monitor/Landing/widgets/logo_widget.dart';
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
                  _LandingText(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 64,
                      bottom: 64,
                    ),
                    child: _GetStartedButton(),
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

class _GetStartedButton extends StatelessWidget {
  const _GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {},
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

class _LandingText extends StatelessWidget {
  const _LandingText({
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
