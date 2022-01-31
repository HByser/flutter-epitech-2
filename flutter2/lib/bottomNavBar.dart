import 'package:flutter/material.dart';
import 'constants.dart';

class BottomNavBar extends StatelessWidget {

  BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
             color: kLightGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.calendar_today,
                size: 20,
                color: kButtonColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            RawMaterialButton(
              onPressed: () {},
              fillColor: kGreen,
              child: Icon(
                Icons.house,
                size: 30,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
            SizedBox(
              width: 10,
            ),
            RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.timer,
                size: 20,
                color: kButtonColor,
              ),
            ),
          ],
        )
      ),
    );
  }
}
