import 'package:flutter/material.dart';
import 'bottomNavBar.dart';
import 'constants.dart';

class ShowTeamMember extends StatelessWidget {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kDarkGrey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Text(
                'Your team',
                style: kWhiteTitleText,
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: ListTile(
                        title: Text("Team member n", style: kWhiteTitleButton),
                        subtitle: Text("Member role", style: kWhiteTitleButton),
                        leading: CircleAvatar(backgroundImage: AssetImage('assets/profileTest.png')),
                        trailing: Icon(Icons.message, color: Colors.white,)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
