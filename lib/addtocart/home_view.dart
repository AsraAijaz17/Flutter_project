import 'package:flutter/material.dart';
import 'package:flutterscndpractice/addtocart/cart_screen.dart';
import 'package:flutterscndpractice/data/product_list.dart';

class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({super.key});

  @override
  State<HomeViewScreen> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeViewScreen> {
  List cartItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cartItems.length.toString()),
        actions: [
          ElevatedButton(
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartViewScreen(
                              items: cartItems,
                            )));
                setState(() {});
                
              },
              child: Icon(Icons.card_travel))
        ],
      ),
      body: ListView.builder(
          itemCount: productData.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.amber,
              title: Text(productData[index]["name"]),
              subtitle: Text(productData[index]["price"].toString()),
              trailing: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cartItems.add(productData[index]);

                      print(cartItems);
                      print(cartItems.length);
                    });
                    //---------------------------------------------
                    // setState(() {
                    //   // Find the index of the selected item in cartItems
                    //   int cartIndex = cartItems.indexWhere(
                    //       (item) => item["name"] == productData[index]["name"]);

                    //   if (cartIndex != -1) {
                    //     // If item is already in cart, increase its quantity
                    //     cartItems[cartIndex]["quantity"] += 1;
                    //   } else {
                    //     // If item is not in cart, add it with quantity 1
                    //     Map<String, dynamic> newItem =
                    //         Map.from(productData[index]);
                    //     newItem["quantity"] = 1;
                    //     cartItems.add(newItem);
                    //   }

                    //   print(cartItems);
                    // }
                    // );
                  },
                  child: Icon(Icons.add)),
            );
          }),
    );
  }
}
