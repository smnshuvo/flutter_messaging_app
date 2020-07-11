import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages','Online','Group','Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Theme.of(context).primaryColor,
      // A horizontal ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          // ignore: missing_return
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              // change the selected state on tap
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                child: Text(categories[index], style: TextStyle(
                  // should show the selected index highlighted
                  color: index == selectedIndex ? Colors.white : Colors.white70,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                ),
              ),
            );
          })
    );
  }
}
