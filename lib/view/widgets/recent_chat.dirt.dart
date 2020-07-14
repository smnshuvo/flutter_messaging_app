import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recent Chats',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 14.00,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0
              ),),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: (){},)
            ],
          ),
        ),
      ],
    );
  }
}
