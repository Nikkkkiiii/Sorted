import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoteList extends StatelessWidget {
  NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 159, 112, 165),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            // color: Colors.white,
            onPressed: () {
              // Add logout functionality here
              Navigator.pushReplacementNamed(context, '/back');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Title'),
              SizedBox(
                height: 20,
              ),
              Text("Description")
            ],
          ),
          height: 200,
          width: 500,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 227, 195, 243)),
          // padding: EdgeInsets.only(top: 10, left: 160),
        ),
      ),
    );
  }
}
