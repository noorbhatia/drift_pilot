import 'package:flutter/material.dart';
import 'package:drift_pilot/pallete.dart';
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
                          fontSize: 60,
                          color: Colors.tealAccent,
                        ),
                        children: [
                          TextSpan(
                            text: 'pilot',
                            style: TextStyle(
                                fontFamily: 'SProBold',
                                fontSize: 60,
                                color: Colors.white),
                          )
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
