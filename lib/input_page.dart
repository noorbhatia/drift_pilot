import 'package:drift_pilot/text_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:delayed_display/delayed_display.dart';
import 'background_image.dart';
import 'line.dart';
import 'button.dart';
import 'fade.dart';

class InputPage extends StatelessWidget {
  Duration initialDelay = Duration(seconds: 1);
  bool run = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Stack(
              children: [
                Background(
                  page: 1,
                ),
                Overlay(
                  page: 1,
                ),
                Title(
                  icon: 'location',
                  colouredText: 'Book ',
                  title: 'your next travel in minutes',
                  description:
                      'Book your flights, hotels and cabs easily from this app.',
                ),
              ],
            ),
            Fade(
              child: Background(
                page: 2,
              ),
              delay: Duration(seconds: initialDelay.inSeconds + 3),
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 3),
              child: Stack(
                children: [
                  OverlayTwo(
                    page: 2,
                  ),
                ],
              ),
            ),
            TextTransition(
              delay: Duration(seconds: initialDelay.inSeconds + 3),
              child: Title(
                icon: 'phone',
                colouredText: 'Get real time ',
                title: 'updates on your trip',
                description:
                    'Add your business expenses and get reimbursed easily.',
              ),
            ),
            Fade(
              child: Background(
                page: 3,
              ),
              delay: Duration(seconds: initialDelay.inSeconds + 6),
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 6),
              child: Stack(
                children: [
                  Overlay(
                    page: 3,
                  ),
                ],
              ),
            ),
            TextTransition(
              delay: Duration(seconds: initialDelay.inSeconds + 6),
              child: Title(
                icon: 'money_tag',
                colouredText: 'Manage ',
                title: 'your expenses on-the-go',
                description:
                    'Add your business expenses and get reimbursed easily.',
              ),
            ),
            Fade(
              child: Background(
                page: 4,
              ),
              delay: Duration(seconds: initialDelay.inSeconds + 9),
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 9),
              child: Stack(
                children: [
                  OverlayTwo(
                    page: 4,
                  ),
                ],
              ),
            ),
            TextTransition(
              delay: Duration(seconds: initialDelay.inSeconds + 9),
              child: Title(
                icon: 'wallet',
                colouredText: 'Automate ',
                title: 'your expense reporting',
                description:
                    'Add your business expenses and get reimbursed easily.',
              ),
            ),
            DottedLine(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Transition(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final int page;
  Background({this.page});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BackgroundImage(image: 'images/img_walkthrough_step_$page.png'),
    );
  }
}

class Overlay extends StatelessWidget {
  final int page;

  Overlay({
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        'images/img_walkthroug_bot_overlay_$page.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

class OverlayTwo extends StatelessWidget {
  final int page;

  OverlayTwo({
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 120),
        child: Image.asset(
          'images/img_walkthroug_bot_overlay_$page.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String icon;
  final String colouredText;
  final String title;
  final String description;

  Title({
    this.icon,
    this.colouredText,
    this.title,
    this.description,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      width: size.width * 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/ic_$icon.png',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                          text: '$colouredText',
                          style: TextStyle(
                            fontFamily: 'SProBold',
                            fontSize: 22,
                            color: Colors.tealAccent,
                          ),
                          children: [
                            TextSpan(
                              text: '$title',
                              style: TextStyle(
                                  fontFamily: 'SProBold',
                                  fontSize: 22,
                                  color: Colors.white),
                            )
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    '$description',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SProReg',
                      fontSize: 12,
                      color: Colors.white70,
                      wordSpacing: 0.3,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DottedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: Stack(
              children: [
                Image.asset(
                  'images/img_dotted_line.png',
                ),
                SizedBox(
                  width: 244,
                  child: Line(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
