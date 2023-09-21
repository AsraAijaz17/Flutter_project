import 'package:flutter/material.dart';

class CartViewScreen extends StatefulWidget {
  final List items;
  const CartViewScreen({super.key, required this.items});

  @override
  State<CartViewScreen> createState() => _CartViewScreenState();
}

class _CartViewScreenState extends State<CartViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart View"),
      ),
      body: Center(
        child: widget.items.isEmpty
            ? Text("Cart is Empty")
            : ListView.builder(
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${widget.items[index]["name"]}"),
                    subtitle: Text("${widget.items[index]["price"]}"),
                    trailing: Wrap(
                      children: [ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.items.removeAt(index);
                            });
                          },
                          child: Text("-")),
                          ],
                    ),
                  );
                }),
      ),
    );
  }
}
