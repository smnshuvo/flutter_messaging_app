import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermessagingapp/model/message_model.dart';

class InboxMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
        ),
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index){
              final chat = chats[index];
              return Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(chat.sender.imageUrl),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(chat.sender.name),
                      Text(chat.text)
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
