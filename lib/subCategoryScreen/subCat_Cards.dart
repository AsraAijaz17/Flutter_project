import 'package:flutter/material.dart';

class SubCategoryCards extends StatefulWidget {
  const SubCategoryCards({super.key});

  @override
  State<SubCategoryCards> createState() => _SubCategoryCardsState();
}

class _SubCategoryCardsState extends State<SubCategoryCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 299,
      color: Colors.red,
      child: Row(
        children: [
          Container(
            height: 167,
            width: 137,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
