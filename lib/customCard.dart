import 'package:flutter/material.dart';
import 'gender.dart';
import 'main.dart';
class CustomContainer extends StatelessWidget {
  final IconData icon;
  final String content;
  final Color cardColor;
  final Function onPress;
  CustomContainer({this.icon, this.content, this.cardColor, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 150,
        margin: EdgeInsets.all(14),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: inActiveColor,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              icon,
              color: lightColor,
              size: 60,
            ),
            Text(
              content,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25,
                color: lightColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
