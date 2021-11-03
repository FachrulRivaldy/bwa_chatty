import 'package:bwa_chatty/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/group1.png',
                    height: 55,
                    width: 55,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jakarta Fair",
                        style: titleTextStyle,
                      ),
                      Text("14,209 embers", style: subtitleTextStyle)
                    ],
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.call,
                      size: 16,
                    ),
                    backgroundColor: greenColor,
                    mini: true,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ChatBubbleLeft(
                imageUrl: 'assets/images/friend1.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              ChatBubbleLeft(
                imageUrl: 'assets/images/friend3.png',
                text: 'Find here :P',
                time: '3:11',
              ),
              ChatBubbleRight(
                imageUrl: 'assets/images/profile.png',
                text:
                    'Thinking about how to deal with this client from hell...',
                time: '22:08',
              ),
              ChatBubbleLeft(
                imageUrl: 'assets/images/friend2.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      )),
    );
  }
}
