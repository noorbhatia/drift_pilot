import 'package:flutter/material.dart';
import 'package:drift_pilot/textfield_input.dart';
import 'background_image.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'images/download.jpg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                        text: 'drift',
                        style: TextStyle(
                          fontFamily: 'SProBold',
                          fontSize: 50,
                          color: Colors.tealAccent,
                        ),
                        children: [
                          TextSpan(
                            text: 'pilot\n',
                            style: TextStyle(
                                fontFamily: 'SProBold',
                                fontSize: 50,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text: 'It\'s all about the journey',
                            style: TextStyle(
                              fontFamily: 'SProReg',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    TextInputField(
                      hint: 'What\'s your email id?',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
