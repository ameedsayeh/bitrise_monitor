import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GrantAccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF381A4B),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                children: [
                  SizedBox(
                      height: 150,
                      child: SvgPicture.asset("lib/assets/images/lock.svg")),
                  _EnterTokenText(),
                  _TokenTextField(),
                  _HowToText(),
                  _GrantAccessButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GrantAccessButton extends StatelessWidget {
  const _GrantAccessButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: () {},
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
        ),
      ),
    );
  }
}

class _HowToText extends StatelessWidget {
  const _HowToText({
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

class _EnterTokenText extends StatelessWidget {
  const _EnterTokenText({
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

class _TokenTextField extends StatelessWidget {
  const _TokenTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        child: Center(
          child: TextField(
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
