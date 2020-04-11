import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customButton.dart';
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {
  bool press = false;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: AnimatedOpacity(
              opacity: press? 0.0: 1.0,
              duration: Duration(milliseconds: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('BMI Calc',
                    style: TextStyle(
                      color: Color(0xFFf1f3f4),
                      fontSize: 50.0,
                      fontFamily: 'Pacifico',
                    ),),
                  CustomButton(
                    buttonColor: Color(0xFFf1f3f4),
                    textColor: Color(0xFF512b58),
                    content: 'Start',
                    onPress: () {
                      setState(() {
                        press = !press;
                        waitt(context);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}



Future<void> waitt(BuildContext context) {
  return Future.delayed(Duration(milliseconds: 480), () => Navigator.pushNamed(context, '/gender'));
}



