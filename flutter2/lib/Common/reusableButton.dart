import 'package:flutter/material.dart';
import 'package:timetracker/constants.dart';

class ReusableButton extends StatelessWidget {

  ReusableButton({@required this.textInput, @required this.onPress});

  final String textInput;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      height: 70,
      child: TextButton(
        child: Text(
          textInput,
          style: kWhiteTitleButton,
        ),
        style: TextButton.styleFrom(
          backgroundColor: kGreen,
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        ),
        onPressed: onPress,
      ),
    );
  }
}
