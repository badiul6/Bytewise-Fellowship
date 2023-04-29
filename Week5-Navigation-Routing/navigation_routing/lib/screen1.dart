import 'package:flutter/material.dart';
import 'package:navigation_routing/screen2.dart';
import 'package:navigation_routing/utils/route_name.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.screen2, arguments: {
                    "Name": "Badiul",
                    "Age": "22"
                  });
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Move to Screen2"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
