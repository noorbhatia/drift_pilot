import 'package:flutter/material.dart';

class Transition extends StatefulWidget {
  @override
  _TransitionState createState() => _TransitionState();
}

class _TransitionState extends State<Transition> {
  bool _visible = true;

  @override
  void initState() {
    super.initState(); //when this route starts, it will execute this code
    Future.delayed(Duration(seconds: 10), () {
      //asynchronous delay
      //checks if widget is still active and not disposed
      setState(() {
        //tells the widget builder to rebuild again because ui has updated
        _visible =
            false; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      sizeCurve: Curves.decelerate,
      firstChild: Skip(),
      secondChild: Continue(),
      crossFadeState:
          _visible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 400),
    );
  }
}

class Skip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'LoginScreen');
            },
            child: Text(
              'SKIP',
              style: TextStyle(
                fontFamily: 'SProSemiBold',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Continue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'LoginScreen');
            },
            child: Text(
              'CONTINUE',
              style: TextStyle(
                fontFamily: 'SProSemiBold',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
