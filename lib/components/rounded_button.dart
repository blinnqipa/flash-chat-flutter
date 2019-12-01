import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton(
      {this.colorName, this.buttonText, @required this.navigationFunction});
  final Color colorName;
  final String buttonText;
  final Function navigationFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colorName,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: navigationFunction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
