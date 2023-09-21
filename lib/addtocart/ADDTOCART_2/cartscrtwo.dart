import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScrTwo extends StatefulWidget {
  final List items;
  const CartScrTwo({super.key, required this.items});

  @override
  State<CartScrTwo> createState() => _CartViewScreenState();
}

class _CartViewScreenState extends State<CartScrTwo> {
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
                    tileColor: Colors.amber,
                    leading:
                        SvgPicture.asset(widget.items[index]["ProductImage"],
                            width: 50, // Adjust the width as needed
                            height: 50),
                    title: Text("${widget.items[index]["ProductName"]}"),
                    subtitle: Text("${widget.items[index]["ProductPrice"]}"),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                widget.items[index]["quantity"] += 1;
                              });
                            },
                            icon: Icon(Icons.add)),
                        Text(
                          "${widget.items[index]["quantity"]}",
                          style: TextStyle(fontSize: 15),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (widget.items[index]["quantity"] > 1) {
                                  widget.items[index]["quantity"] -= 1;
                                } else {
                                  widget.items.removeAt(index);
                                }
                              });
                            },
                            icon: Icon(Icons.remove)),
                      ],
                    ),
                  );
                }),
      ),
    );
  }
}
