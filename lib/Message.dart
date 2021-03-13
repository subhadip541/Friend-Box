import 'package:friend_box/User.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool islike;
  final bool unread;

  Message({this.sender, this.time, this.text, this.islike, this.unread});
}

final User currentuser = User(
  id: 0,
  name: "Current User",
  image: 'images/dip.jpg',
);
final User Subhadip = User(
  id: 1,
  name: "Subhadip",
  image: 'images/dip.jpg',
);
final User Swapnanil = User(
  id: 2,
  name: "Swapnanil",
  image: 'images/swap.jpg',
);
final User Avishek = User(
  id: 3,
  name: "Avishek",
  image: 'images/avi.jpg',
);
final User Swagato = User(
  id: 4,
  name: "Swagato",
  image: 'images/swag.jpg',
);
final User Suchetana = User(
  id: 5,
  name: "Suchetana",
  image: 'images/suche.jpg',
);
final User Anwesha = User(
  id: 6,
  name: "Anwesha",
  image: 'images/anu.jpg',
);
List<User> favorites = [Subhadip, Swapnanil, Anwesha, Swagato, Suchetana];
List<Message> chats = [
  Message(
    sender: Subhadip,
    time: '10.30 PM',
    text: "Make youre dream target then hit that target",
    islike: true,
    unread: false,
  ),
  Message(
    sender: Swapnanil,
    time: '11.30 PM',
    text: "Software is not as soft as you think",
    islike: true,
    unread: true,
  ),
  Message(
    sender: Swagato,
    time: '08.00 PM',
    text: "Busy",
    islike: false,
    unread: false,
  ),
  Message(
    sender: Anwesha,
    time: '7.30 PM',
    text: "Hey there i am using subhadip's friend box",
    islike: true,
    unread: false,
  ),
  Message(
    sender: Avishek,
    time: '12.40 AM',
    text: "Dont call me right now !",
    islike: true,
    unread: true,
  ),
  Message(
    sender: Suchetana,
    time: '12.30 AM',
    text: "Available all the time for you !",
    islike: true,
    unread: true,
  ),
];
