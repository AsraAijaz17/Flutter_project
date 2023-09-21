//assignment work (whatsapp)

import 'package:flutter/material.dart';
import 'package:flutterscndpractice/widgets/custom_chat_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WhatsApp"),
        
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            ChatTile(
              name: "MERN Basics",
              message: "+92656787897 joined using this group's invite link?",
              time: "9:00PM",
            ),
            ChatTile(
              name: "Tanno",
              message: "Photo",
              time: "8:05PM",
            ),
            ChatTile(
              name: "Laiba",
              message: "Han aarhi hun",
              time: "7:19PM",
            ),
            ChatTile(
              name: "Aliza",
              message: "Missed voice call",
              time: "6:30PM",
            ),
            ChatTile(
              name: "Areeba",
              message: "Ok",
              time: "9:00PM",
            ),
            ChatTile(
              name: "BSCS",
              message: "You: You deleted this message",
              time: "5:00PM",
            ),
            ChatTile(
              name: "Ammi",
              message: "jee",
              time: "2:00PM",
            ),
            ChatTile(
              name: "Asra Aijaz",
              message: "kahan ho?",
              time: "11:00AM",
            ),
          ],
        )),
      ),
    );
  }
}
