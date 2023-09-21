import 'package:flutter/material.dart';
import 'package:flutterscndpractice/firebaseclass/signup.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login In Screen"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter Email"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Password"),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Text("Dont Have an account? Signup!")),
              
        ],
      
      ),
    );
  }
}
