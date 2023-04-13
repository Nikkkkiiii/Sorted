import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 19, 27, 25),
        title: Text('Hi!!'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            // color: Colors.white,
            onPressed: () {
              // Add logout functionality here
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/dash.jpg"))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 187, 218, 245)),
                      padding: EdgeInsets.only(top: 40, left: 50),
                      height: 100,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/study');
                        },
                        child: Text(
                          "Study",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 193, 251)),
                      padding: EdgeInsets.only(top: 40, left: 50),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Personal",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 201, 242, 174)),
                      padding: EdgeInsets.only(top: 40, left: 25),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Miscellaneous",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 248, 226, 178)),
                      padding: EdgeInsets.only(top: 40, left: 50),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Chores",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 19, 27, 25),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/add');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
