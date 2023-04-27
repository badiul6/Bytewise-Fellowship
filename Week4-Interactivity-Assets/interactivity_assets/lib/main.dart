import 'package:flutter/material.dart';
import 'package:interactivity_assets/screen1.dart';
import 'package:interactivity_assets/screen2.dart';
import 'package:interactivity_assets/screen3.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter layout demo', home: ParentWidget());
  }
}
