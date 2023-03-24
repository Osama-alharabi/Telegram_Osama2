import 'package:telegram/chat_card.dart';

import 'package:flutter/material.dart';


class ChtCard extends StatelessWidget{
   String name;
   String date;
   String message;
   String imageUrl;

  ChtCard({
    required this.name,
    required this.date,
    required this.message,
    required this.imageUrl,
});


  @override
  Widget build(BuildContext context) {
return ListTile(
  title: Row(
    children: [
      Text(name,style: const TextStyle(
        fontWeight: FontWeight.bold
      ),
      ),
      Spacer(),
      Text(date,
      style: TextStyle(
        fontSize: 15,
        color: Colors.black45
      ),)
    ],
  ),
  subtitle: Text(message),
  leading: CircleAvatar(
    backgroundImage: AssetImage(imageUrl),
    radius: 25,
  ),
);
  }

}