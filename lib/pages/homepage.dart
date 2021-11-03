import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
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
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
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
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Friends",
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend1.png',
                      name: "Joshuer",
                      subText: "Sorry, you’re not my ty...",
                      time: "Now",
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend2.png',
                      name: "Gabriela",
                      subText: "I saw it clearly and mig...",
                      time: "2:30",
                      unread: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Groups",
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group1.png',
                      name: "Jakarta Fair",
                      subText: "Why does everyone ca...",
                      time: "11:11",
                      unread: false,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group2.png',
                      name: "Angga",
                      subText: "Here here we can go...",
                      time: "7:11",
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group3.png',
                      name: "Bentley",
                      subText: "The car which does not...",
                      time: "7:11",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
