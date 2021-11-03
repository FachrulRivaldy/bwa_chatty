import 'package:flutter/material.dart';
import 'theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/profpic.png',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sabrina Carpenter",
              style: TextStyle(
                  color: whiteColor, fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Travel Freelancer",
              style: TextStyle(
                  color: lightBlueColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      )),
    );
  }
}
