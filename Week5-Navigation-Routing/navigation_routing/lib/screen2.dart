import 'package:flutter/material.dart';
import 'package:navigation_routing/Screen3.dart';
import 'package:navigation_routing/utils/route_name.dart';

class Screen2 extends StatelessWidget {
  dynamic data;

  Screen2({super.key,this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("Screen2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: "+ data['Name'], style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.screen3, arguments: {
                    "Age": data['Age']
                  });
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Move to Screen3"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Back to Screen1"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
