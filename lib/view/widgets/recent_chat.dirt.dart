import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermessagingapp/model/message_model.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
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
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(favorites[index].name, style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
