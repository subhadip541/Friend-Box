import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class catagory_selector extends StatefulWidget {
  @override
  _catagory_selectorState createState() => _catagory_selectorState();
}

class _catagory_selectorState extends State<catagory_selector> {
  int selected_index = 0;
  final List<String> catagories = ['Message', 'Online', 'Groups', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catagories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected_index = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  catagories[index],
                  style: TextStyle(
                    color: index == selected_index
                        ? Colors.grey[300]
                        : Colors.grey[600],
                    letterSpacing: 1.2,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                  ),
                ),
              ),
            );
          }),
    );
  }
}
