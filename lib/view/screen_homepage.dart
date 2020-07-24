import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermessagingapp/model/message_model.dart';
import 'package:fluttermessagingapp/view/widgets/category_selector.dart';
import 'package:fluttermessagingapp/view/widgets/recent_chat.dirt.dart';
import 'package:fluttermessagingapp/view/widgets/recent_messages.dart';
class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: (){},

        ),
        title: Center(
          child: Text(
          'Chats',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold
          ),
      ),
        ),
        elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: (){},
            ),
          ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              /*Icon of people with recent chats*/
              child: Column(
                children: <Widget>[
                  RecentChats(),
                  InboxMessages(),
                ],
              ),
            ),
          )


        ],
      )
    );
  }

}