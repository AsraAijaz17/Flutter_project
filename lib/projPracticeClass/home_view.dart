// import 'package:flutter/material.dart';
// import 'package:flutterscndpractice/data/product.dart';
// import 'package:flutterscndpractice/projPracticeClass/Favourite/favourite.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: ProductData.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(ProductData[index]["name"]),
//               subtitle: Text(ProductData[index]["price"].toString()),
//               trailing: IconButton(
//                 onPressed: () {
//                   if (ProductData[index]["isfav"] = true) {
//                     ProductData[index]["isfav"] = false;
//                     favItems.remove(ProductData[index]);
//                   } else {
//                     favItems.add(ProductData[index]);
//                   }
//                 },
//                 icon: Icon(Icons.favorite),
//                 color: ProductData[index]["isfav"] ? Colors.red : Colors.grey,
//               ),
//             );
//           }),
//     );
//   }
// }
