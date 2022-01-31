import 'package:flutter/material.dart';
import 'package:timetracker/constants.dart';

class ReusableTextField extends StatelessWidget {

  ReusableTextField({@required this.textInput, @required this.iconChosen, @required this.colour});

  final String textInput;
  final IconData iconChosen;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kDarkGrey,
      elevation: 10.0,
      shadowColor: kDarkGrey,
      child: Container(
        width: 320,
        padding: EdgeInsets.all(10.0),
        child: TextField(
          style: kGreyNormalPolicyText,
          autocorrect: true,
          decoration: InputDecoration(
            hintText: textInput,
            prefixIcon: Icon(iconChosen, color: colour),
            hintStyle: kGreyNormalPolicyText,
            filled: true,
            fillColor: kDarkGrey,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: kDarkGrey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: kLightGrey, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
