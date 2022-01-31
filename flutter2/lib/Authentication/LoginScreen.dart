import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timetracker/Authentication/RegisterScreenFirstStep.dart';
import 'package:timetracker/Common/reusableButton.dart';
import 'package:timetracker/Common/reusableTextField.dart';
import 'package:timetracker/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';
import 'authProvider.dart';


FirebaseAuth auth = FirebaseAuth.instance;

FirebaseApp flutterApp = Firebase.app('M-TRC-837');
FirebaseAuth auth2 = FirebaseAuth.instanceFor(app: flutterApp);

class LoginScreen extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  LoginScreen({this.onSignedOut});
  final VoidCallback onSignedOut;

  Future<void> _signOut(BuildContext context) async {
    try {
      final BaseAuth auth = AuthProvider.of(context).auth;
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kDarkGrey,
          body: Center(
            child: Column(
              children: <Widget>[
                //SizedBox(height: 150),
                Text(
                  'Welcome',
                  style: kWhiteTitleText,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign in to continue',
                  style: kGreyPolicyText,
                ),
                SizedBox(
                  height: 50,
                ),
                ReusableTextField(
                    textInput: 'Username',
                    iconChosen: Icons.account_box,
                    colour: Colors.yellow),
                SizedBox(height: 10),
                ReusableTextField(
                    textInput: 'Password',
                    iconChosen: Icons.lock,
                    colour: Colors.red),
                SizedBox(
                  height: 50,
                ),
                ReusableButton(textInput: 'Sign In', onPress: () async {
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: "tristan.morera@epitech.eu",
                        password: "test123"
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                }),
                SizedBox(
                  height: 30,
                ),
                Text('Forgot password ?', style: kGreyNormalPolicyText),
                SizedBox(
                  height: 50,
                ),
                ReusableButton(textInput: 'Create an account', onPress: () {
                  Navigator.pushNamed(context, '/registerOne');
                },),
              ],
            ),
          ),
        ),
      )
    );
  }
}
