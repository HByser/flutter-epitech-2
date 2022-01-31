import 'package:flutter/material.dart';
import 'package:timetracker/Common/reusableArrowBackButton.dart';
import 'package:timetracker/Common/reusableButton.dart';
import 'package:timetracker/Common/reusableTextField.dart';
import 'package:timetracker/constants.dart';

class RegisterScreenSecondStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kDarkGrey,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 150),
              Text(
                'Hello',
                style: kWhiteTitleText,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Choose your password',
                style: kGreyPolicyText,
              ),
              SizedBox(
                height: 80,
              ),
              ReusableTextField(textInput: 'Password', iconChosen: Icons.lock, colour: Colors.red),
              SizedBox(height: 10),
              ReusableTextField(textInput: 'Repeat your password', iconChosen: Icons.lock, colour: Colors.red),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ReusableArrowBackButton(onPress: () {
                    Navigator.pop(context);
                  },),
                  SizedBox(width: 20),
                  ReusableButton(textInput: 'Next', onPress: () {
                    Navigator.pushNamed(context, '/profile');
                  },),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}