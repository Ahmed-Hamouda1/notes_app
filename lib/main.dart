import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget
{
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      theme: ThemeData
      (
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 62, 62, 62)
      ),
      home: Scaffold(),
    );
  }
}