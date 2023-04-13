import 'package:flutter/material.dart';
import 'package:flutterrr/loginsignup.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController conPassController = TextEditingController();

  validation(String username, String email, String password, String confirm) {
    if (username.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirm.isEmpty) {
      // print("empty");
      Fluttertoast.showToast(msg: "Please fill up all the form");
      return;
    }

    if (password != confirm) {
      Fluttertoast.showToast(
          msg: "Your password didn't match with confirm password!!");
      return;
    }
    if (confirm.length <= 8) {
      Fluttertoast.showToast(
          msg: "Enter your password more than 8 characters!!");
      return;
    }
    //  String  emailvalidation(email);

    if (RegExp(r'@').hasMatch(email)) {
      Fluttertoast.showToast(msg: "successful");
      LoginSignup obj = new LoginSignup();
      obj.signUp(username, email, password, context);
      
    } else {
      Fluttertoast.showToast(msg: "Please enter a valid email.");
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    var fToast;

    void initState() async {
      // TODO: implement initState
      super.initState();
      fToast = FToast();
      fToast.init(context);
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 150,
                margin: EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 122, 13).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Center(
                  child: Text(
                    "SORTED",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 244, 212, 212),
                    ),
                  ),
                ),
              ),
              Text(
                "Create an account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                child: TextField(
                  controller: nameController,
                  // obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 135, 166, 244),
                      border: OutlineInputBorder(),
                      hintText: "Name"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                child: TextField(
                  controller: emailController,
                  // obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 135, 166, 244),
                      border: OutlineInputBorder(),
                      hintText: "Email"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 135, 166, 244),
                      border: OutlineInputBorder(),
                      hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                child: TextField(
                  controller: conPassController,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 135, 166, 244),
                      border: OutlineInputBorder(),
                      hintText: "Confirm password"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:  EdgeInsets.only(right: 260),
                child: Row(
                  children: [
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.check_box_rounded),
                    //   color: Color.fromARGB(255, 79, 73, 73),
                    //   iconSize: 20.0,
                    // ),
                    // Text(
                    //   "Remember me?",
                    //   style: TextStyle(fontWeight: FontWeight.w500),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  String username = nameController.text.trim();
                  String email = emailController.text.trim();
                  String password = passController.text.trim();
                  String confirmPassword = conPassController.text.trim();

                  validation(username, email, password, confirmPassword);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: AutofillHints.birthday,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Color.fromARGB(255, 21, 109, 232)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text(
                  "Already have an account? Login",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
