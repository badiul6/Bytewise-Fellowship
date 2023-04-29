import 'package:flutter/material.dart';
import 'package:navigation_routing/screen2.dart';
import 'package:navigation_routing/utils/route_name.dart';

class Screen3 extends StatelessWidget {
  dynamic data;
  Screen3({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Age: "+ data['Age'], style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),
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
                    Text("Back to Screen2"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
