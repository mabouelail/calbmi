import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customButton.dart';
import 'customCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

const Color activeColor = Colors.black;
const Color inActiveColor = Color(0xFF512b58);
enum Gender {
  male,
  female,
}
Gender selectedGender;

class Screen0 extends StatefulWidget {
  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  bool nextPressed = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(scaffoldBackgroundColor: lightColor),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomContainer(
                        cardColor: selectedGender == Gender.male
                            ? activeColor
                            : inActiveColor,
                        icon: FontAwesomeIcons.mars,
                        content: 'Male',
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomContainer(
                        cardColor: selectedGender == Gender.female
                            ? activeColor
                            : inActiveColor,
                        icon: FontAwesomeIcons.venus,
                        content: 'Female',
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Builder
                      (builder: (BuildContext context) {
                      return CustomButton(
                        content: 'NEXT',
                        onPress: () {
                          setState(() {
                            if ((selectedGender == Gender.male) || (selectedGender == Gender.female)) {
                              Navigator.pushNamed(context, '/age');

                            }else {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text('you should select gender',
                                style: TextStyle(
                                  fontSize: 15,
                                ),),
                                backgroundColor: darkColor,
                                duration: Duration(milliseconds: 1000),
                              ),
                              );
                            }
                          });
                        },
                        textColor: Color(0xFF512b58),
                        buttonColor: Color(0xFFf1f3f4),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

