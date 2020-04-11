import 'package:calbmi/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gender.dart';
import 'age.dart';
import 'welcome.dart';
import 'height.dart';
import 'result.dart';
import 'weight.dart';
const Color darkColor = Color(0xFF512b58);
const Color lightColor = Color(0xFFededed);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF512b58),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: lightColor,
            fontFamily: 'Pacifico',
          ),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.deepOrange,
          trackHeight: 30,
          thumbColor: darkColor,
          inactiveTrackColor: lightColor,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/gender': (context) => Screen0(),
        '/age': (context) => Screen1(),
        '/height': (context) => Screen2(),
        '/weight' : (context) => Screen3(),
        '/result': (context) => Result(),
      },
    );
  }
}
