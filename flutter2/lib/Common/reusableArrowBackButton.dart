import 'package:flutter/material.dart';
import 'package:timetracker/constants.dart';

class ReusableArrowBackButton extends StatelessWidget {

  ReusableArrowBackButton({@required this.onPress});

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      height: 70,
      child: TextButton(
        child: Icon(
          Icons.arrow_back,
          color: kGreen,
        ),
        style: TextButton.styleFrom(
          backgroundColor: kArrowColor,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
        ),
        onPressed: onPress,
      ),
    );
  }
}
