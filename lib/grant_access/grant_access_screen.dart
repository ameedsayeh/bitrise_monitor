import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bitrise_monitor/Services/bitrise_client.dart';
import 'widgets/enter_token_text.dart';
import 'widgets/grant_access_button.dart';
import 'widgets/how_to_get_token_button.dart';
import 'widgets/token_textfield.dart';

class GrantAccessScreen extends StatefulWidget {
  @override
  _GrantAccessScreenState createState() => _GrantAccessScreenState();
}

class _GrantAccessScreenState extends State<GrantAccessScreen> {
  final tokenTextController = TextEditingController();

  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF381A4B),
      body: buildPage(context),
    );
  }

  Widget buildPage(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 32.0),
                child: Column(
                  children: [
                    SizedBox(
                        height: 150,
                        child: SvgPicture.asset("lib/assets/images/lock.svg")),
                    EnterTokenText(),
                    TokenTextField(textController: this.tokenTextController),
                    HowToGetTokenButton(),
                    GrantAccessButton(
                      onClick: () {
                        setState(() {
                          this.isLoading = true;
                        });

                        BitriseClient.instance
                            .checkAuthorization(this.tokenTextController.text)
                            .then((value) {
                          setState(() {
                            this.isLoading = false;
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        this.isLoading
            ? Container(
                color: Color(0x77000000),
                child: Center(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Color(0xFF381A4B)),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
