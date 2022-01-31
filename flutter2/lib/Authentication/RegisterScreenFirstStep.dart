import 'package:flutter/material.dart';
import 'package:timetracker/Common/reusableArrowBackButton.dart';
import 'package:timetracker/Common/reusableButton.dart';
import 'package:timetracker/Common/reusableTextField.dart';
import 'package:timetracker/constants.dart';

class RegisterScreenFirstStep extends StatelessWidget {
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
                'Let\'s introduce',
                style: kGreyPolicyText,
              ),
              SizedBox(
                height: 60,
              ),
              ReusableTextField(textInput: 'Full Name', iconChosen: Icons.account_box, colour: Colors.yellow),
              SizedBox(height: 10),
              ReusableTextField(textInput: 'Email', iconChosen: Icons.email, colour: Colors.yellow),
              SizedBox(height: 10),
              ReusableTextField(textInput: 'Mobile phone', iconChosen: Icons.phone, colour: Colors.yellow),
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
                    Navigator.pushNamed(context, '/registerTwo');
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