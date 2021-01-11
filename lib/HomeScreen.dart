import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friend_box/catagory_selector.dart';
import 'package:friend_box/favourite_contacts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.green[700],
            size: 30,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Friend-Box",
            style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              //fontFamily: "Quicksand",
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.green[700],
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          catagory_selector(),
          faourite_contacts(),
        ],
      ),
    );
  }
}
