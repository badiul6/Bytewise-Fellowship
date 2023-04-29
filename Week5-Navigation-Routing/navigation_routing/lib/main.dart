import 'package:flutter/material.dart';
import 'package:navigation_routing/screen1.dart';
import 'package:navigation_routing/utils/route_name.dart';
import 'package:navigation_routing/utils/routes.dart';

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
      initialRoute: RouteName.screen1,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
