import 'package:flutter/material.dart';
import 'input_page.dart';
import 'login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: InputPage(),
      initialRoute: '/',
      routes: {
        'LoginScreen': (context) => LoginScreen(),
      },
    );
  }
}
