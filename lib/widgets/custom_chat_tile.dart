import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const ChatTile(
      {super.key,
      required this.name,
      required this.message,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/img2.jpg"),
          radius: 25,
          backgroundColor: Colors.blueGrey,
        ),
        tileColor: Color.fromARGB(255, 228, 223, 223),
        title: Text(name),
        subtitle: Text(message),
        trailing: Text(time),
      ),
    );
  }
}
