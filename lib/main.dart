import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterscndpractice/bottomNavBar/Category_screen.dart';
import 'package:flutterscndpractice/categoriesScreen/category_screen.dart';
import 'package:flutterscndpractice/firebase_options.dart';
import 'package:flutterscndpractice/run.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: run(),
    );
  }
}
