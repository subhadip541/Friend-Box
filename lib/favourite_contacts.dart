import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:friend_box/Message.dart';

class faourite_contacts extends StatefulWidget {
  @override
  _faourite_contactsState createState() => _faourite_contactsState();
}

class _faourite_contactsState extends State<faourite_contacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 12),
                child: Container(
                  height: 40,
                  width: 165,
                  decoration: (BoxDecoration(
                      color: Colors.deepPurple[600],
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Favorite Contacts",
                      //textDirection: TextDirection.ltr,
                      style: TextStyle(
                        // background: Paint()..color = ,
                        letterSpacing: 1.2,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5),
                child: Container(
                  height: 40,
                  width: 55,
                  decoration: (BoxDecoration(
                      color: Colors.deepPurple[600],
                      borderRadius: BorderRadius.all(Radius.circular(19)))),
                  child: IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 32,
                    color: Colors.grey[300],
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 37,
                        backgroundImage: AssetImage(
                          favorites[index].image,
                        ),
                      ),
                    ),
                    Text(
                      favorites[index].name,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            )),
      ]),
    );
  }
}
