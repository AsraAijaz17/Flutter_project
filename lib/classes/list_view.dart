//from online class , 20 aug

import 'package:flutter/material.dart';

class ListVieww extends StatefulWidget {
  const ListVieww({super.key});

  @override
  State<ListVieww> createState() => _ListViewwState();
}

class _ListViewwState extends State<ListVieww> {
  List friendList = ["Asra", "Aliza", "Zoha", 1];

  additem() {
    setState(() {
      friendList.add("value");
    });
  }

  additem2() {
    setState(() {
      friendList.add(names.text);
      names.clear();
    });
  }

  rmvItem({meraBanayaHuaParameter}) {
    setState(() {
      friendList.removeAt(meraBanayaHuaParameter);
    });
  }

  TextEditingController names = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: names,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                additem2();
              },
              child: Text("Add Item"))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(friendList[index].toString()),
                    trailing: IconButton(
                        onPressed: () {
                          rmvItem(meraBanayaHuaParameter: index);
                        },
                        icon: Icon(Icons.delete)),
                  ),
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          additem2();
        },
        child: Text("Add"),
      ),
    );
  }
}
