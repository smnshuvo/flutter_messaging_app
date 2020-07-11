import 'package:flutter/material.dart';
import 'package:fluttermessagingapp/view/screen_homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Messaging App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Color(0xFFFEF9EB), // yellowish white
      ),
      home: HomeScreen(),
    );
  }
}
