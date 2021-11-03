import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subText;
  final String time;
  final bool unread;

  ChatTile({
    this.imageUrl = '',
    this.name = '',
    this.subText = '',
    this.time = '',
    this.unread = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
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
                name,
                style: titleTextStyle,
              ),
              Text(
                subText,
                style: unread
                    ? subtitleTextStyle.copyWith(color: blackColor)
                    : subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
