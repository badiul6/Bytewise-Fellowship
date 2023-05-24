import 'package:flutter/material.dart';
import 'package:notes_keeping/providers/notes_provider.dart';
import 'package:notes_keeping/providers/theme_provider.dart';
import 'package:notes_keeping/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NotesProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider())
      ],
      child: Builder(
        builder: (BuildContext context) {
          final theme= Provider.of<ThemeProvider>(context);

          return MaterialApp(

            themeMode: theme.theme,
              title: 'Flutter Demo',
            
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                
              ),
            
              theme: ThemeData(
                primarySwatch: Colors.indigo,
              ),
              home: const HomeScreen(),
            );
        }
      ),
    );
  }
}
