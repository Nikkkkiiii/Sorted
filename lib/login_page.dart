// import 'dart:js';

import "package:flutter/material.dart";
import 'package:flutterrr/loginsignup.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  Login({super.key});
  static String? username;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  validation(String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      // print("empty");
      Fluttertoast.showToast(msg: "Please fill up all the form");
      return;
    }

    if (password.length <= 8) {
      Fluttertoast.showToast(
          msg: "Enter your password more than 8 characters!!");
    } else {
      LoginSignup obj = new LoginSignup();
      // va
      obj.login(username, password, context as BuildContext);
    }
  }
  // static String username=nameController.text;

  static String newname = "";

  @override
  Widget build(BuildContext context) {
    newname = nameController.text;

    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/Hello.jpg"))),
      child: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outline),
            color: Color.fromARGB(255, 79, 73, 73),
            iconSize: 80.0,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 370,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 228, 226, 239),
                    border: OutlineInputBorder(),
                    hintText: "UserName"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 370,
              child: TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 228, 226, 239),
                    border: OutlineInputBorder(),
                    hintText: "Password"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: GestureDetector(
              onTap: () {
                String name = nameController.text.trim();
                String passsword = passController.text.trim();
                Login.username = nameController.text.trim();

                validation(name, passsword);
              },
              child: Container(
                // width: 100,
                child: Center(
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                        fontFamily: AutofillHints.birthday,
                        color: Colors.black),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color.fromARGB(255, 238, 222, 222)),
              ),
            ),
          ),
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/signUp');
                },
                child: Text('Don\'t have an account? SignUp')),
          ),
        ],
      )),
    ));
  }
}
