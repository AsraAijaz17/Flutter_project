import 'package:flutter/material.dart';
import 'package:flutterscndpractice/categoriesScreen/categorycards.dart';
import 'package:flutterscndpractice/subCategoryScreen/subCat_Cards.dart';

class run extends StatelessWidget {
  const run({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: SubCategoryCards()),
    );
  }
}
