import 'package:flutter/material.dart';
import 'package:flutterrr/noteslist.dart';

import 'add_note.dart';
import 'dashboard.dart';
import 'package:flutterrr/login_page.dart';

import 'signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dash(),
      initialRoute: "/login",
      routes: {
        '/signUp': (context) => SignUp(),
        '/login': (context) => Login(),
        '/dashboard': (context) => Dash(),
        '/add': (context) => AddNotes(),
        '/back': (context) => Dash(),
        '/backk': (context) => Dash(),
        '/go': (context) => NoteList(),
        '/study': (context) => NoteList(),
      },
    );
  }
}
