import 'package:flutter/material.dart';
import 'package:navigation_routing/screen1.dart';
import 'package:navigation_routing/utils/route_name.dart';

import '../Screen3.dart';
import '../screen2.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name)
    {
      case RouteName.screen1:
        return MaterialPageRoute(builder: (context)=> const Screen1()); 

      case RouteName.screen2:
        return MaterialPageRoute(builder: (context)=>  Screen2( data: settings.arguments as Map,)); 
        

      case RouteName.screen3:
        return MaterialPageRoute(builder: (context)=> Screen3( data: settings.arguments as Map,));

      default:
        return MaterialPageRoute(builder:(context) {
          return const Scaffold(
            body: Center(child: Text("No route defined")),
          );
        });

    }
  }
}