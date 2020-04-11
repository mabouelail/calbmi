import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String content;
  final Function onPress;
  final Color buttonColor;
  final Color textColor;
  CustomButton({@required this.content, @required this.onPress, this.buttonColor, this.textColor});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: textColor,
      color: buttonColor,
      elevation: 10,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      child: Text(
        content,
        style: TextStyle(
          letterSpacing: 5.0,
          fontFamily: 'PermanentMarker',
          fontSize: 25.0,
        ),),
      onPressed: onPress,
    );
  }
}