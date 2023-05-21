import 'package:flutter/material.dart';
import 'package:notes_keeping/providers/notes_provider.dart';
import 'package:notes_keeping/screens/add_note.dart';
import 'package:notes_keeping/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
