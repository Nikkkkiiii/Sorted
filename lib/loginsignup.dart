// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterrr/dashboard.dart';
import 'package:flutterrr/ipaddress.dart';
import 'package:flutterrr/login_page.dart';
import 'package:flutterrr/signup_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class LoginSignup {
  login(String username, String password, BuildContext context) async {
    try {
      String UrlServer = "http://" + IpAddress.ip + "/connection/login.php";
      print(UrlServer);
      Uri uri = Uri.parse(UrlServer);
      var info = {'name': username, 'password': password};
      print(info);
      var response = await http.post(uri, body: info);
      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        print("redirecting to login page");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Dash()));
      } else if (response.statusCode == 400) {
        Fluttertoast.showToast(msg: "Not signed up yet!!");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Please check the connection.");
    }
  }

  signUp(String name, String email, String password, context) async {
    print(name);
    print(email);
    print(password);

    try {
      String UrlServer = "http://" + IpAddress.ip + "/connection/signup.php";
      print(UrlServer);
      Uri uri = Uri.parse(UrlServer);
      var info = {'name': name, 'email': email, 'password': password};
      print(info);
      var response = await http.post(uri, body: info);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("redirecting to login page");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      } else if (response.statusCode == 400) {
        Fluttertoast.showToast(msg: "Username already taken.");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Please check the connection.");
    }
  }
}
