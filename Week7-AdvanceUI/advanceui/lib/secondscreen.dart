import 'dart:ui';

// import 'package:advanceui/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firstscreen.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;
  TextStyle _style = TextStyle(fontFamily: 'Foldit');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fonts and Typography"),),
      body: CallbackShortcuts(
        bindings: <ShortcutActivator, VoidCallback>{
          const SingleActivator(LogicalKeyboardKey.arrowUp): () {
            setState(() => count = count + 1);
          },
          const SingleActivator(LogicalKeyboardKey.arrowDown): () {
            setState(() => count = count - 1);
          },
        },
        child: Focus(
          autofocus: true,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Press the up arrow key to add to the counter',
                  style: TextStyle(fontFamily: 'RobotoMono', fontSize: 16),
                ),
                const Text(
                  'Press the down arrow key to subtract from the counter',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                Text(
                  'count: $count',
                  style: const TextStyle(
                      fontFamily: 'RobotoMono',
                      fontFeatures: <FontFeature>[
                        FontFeature.oldstyleFigures()
                      ]),
                ),
                const SizedBox(
                  height: 270,
                // ),
                // FloatingActionButton(
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => ThirdScreen()));
                //   },
                //   child: const Text("Next"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
