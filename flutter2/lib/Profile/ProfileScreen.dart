import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timetracker/Common/reusableButton.dart';
import 'package:timetracker/Common/reusableTextField.dart';
import 'package:timetracker/constants.dart';
import 'package:timetracker/bottomNavBar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kDarkGrey,
        appBar: AppBar(
          backgroundColor: kLightGrey,
          title: Text('Profile', style: kWhiteScreenTitleText),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  getImage();
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://t4.ftcdn.net/jpg/04/10/43/77/360_F_410437733_hdq4Q3QOH9uwh0mcqAhRFzOKfrCR24Ta.jpg')))),
              ),
              SizedBox(height: 20),
              Text('John Doe', style: kWhiteScreenTitleText),
              SizedBox(height: 20),
              ReusableTextField(
                  textInput: 'Full name',
                  iconChosen: Icons.account_box,
                  colour: Colors.yellow),
              SizedBox(height: 10),
              ReusableTextField(
                  textInput: 'Email',
                  iconChosen: Icons.email,
                  colour: Colors.yellow),
              SizedBox(height: 10),
              ReusableTextField(
                  textInput: 'Mobile phone',
                  iconChosen: Icons.phone,
                  colour: Colors.yellow),
              SizedBox(height: 20),
              ReusableButton(textInput: 'Save my profile', onPress: null)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
