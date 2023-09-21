import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_view.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  registerUser() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "asra@gmail.com",
        password: "a1a2a3a4",
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Screen"),
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
          ElevatedButton(
              onPressed: () {
                registerUser();
              },
              child: Text("Signup")),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text("Already Have an Account? Login!"))
        ],
      ),
    );
  }
}


// ------------------------



