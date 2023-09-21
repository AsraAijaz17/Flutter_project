import 'package:flutter/material.dart';
import 'package:flutterscndpractice/addtocart/ADDTOCART_2/cartscrtwo.dart';

import '../../data/product_list.dart';
import 'custom_card.dart';

class HomeScrTwo extends StatefulWidget {
  const HomeScrTwo({super.key});

  @override
  State<HomeScrTwo> createState() => _HomeScrTwoState();
}

class _HomeScrTwoState extends State<HomeScrTwo> {
  List cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Row(
              children: [
                Text(
                  cartItems.length.toString(),
                  style: TextStyle(fontSize: 40),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartScrTwo(
                                    items: cartItems,
                                  )));
                      setState(() {});
                    },
                    child: Icon(Icons.card_giftcard)),
              ],
            ),
          ),
          //--------------------------
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 220,
                  color: Colors.yellow,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productData.length,
                      itemBuilder: (context, index) {
                        return CustomCard(
                          ProductName:
                              productData[index]["ProductName"].toString(),
                          ProductPrice:
                              productData[index]["ProductPrice"].toString(),
                          ProductImage: productData[index]["ProductImage"],
                          press: () {
                            // setState(() {
                            //   cartItems.add(productData[index]);
                            //   print(cartItems);
                            // });
                            //------------
                            setState(() {
                              // Find the index of the selected item in cartItems
                              int cartIndex = cartItems.indexWhere((item) =>
                                  item["ProductName"] ==
                                  productData[index]["ProductName"]);

                              if (cartIndex != -1) {
                                // If item is already in cart, increase its quantity
                                cartItems[cartIndex]["quantity"] += 1;
                              } else {
                                // If item is not in cart, add it with quantity 1
                                Map<String, dynamic> newItem =
                                    Map.from(productData[index]);
                                newItem["quantity"] = 1;
                                cartItems.add(newItem);
                              }

                              print(cartItems);
                            });

                            //=-------------
                          },
                        );
                      }),
                ),
              ],
            ),
          ),
          Text("recommended"),
          Container(
            height: 220,
            color: Colors.yellow,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return CustomCard(
                    ProductName: productData[index]["ProductName"].toString(),
                    ProductPrice: productData[index]["ProductPrice"].toString(),
                    ProductImage: productData[index]["ProductImage"],
                    press: () {
                      setState(() {
                        cartItems.add(productData[index]);
                        print(cartItems);
                      });
                    },
                  );
                }),
          ),
        ],
      ),
    ));
  }
}











// CustomCard(
//                   ProductName: productData[index]["ProductName"].toString(),
//                   ProductPrice: productData[index]["ProductPrice"].toString(),
//                   ProductImage: productData[index]["ProductImage"]),



