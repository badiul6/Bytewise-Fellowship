import 'dart:math';

import 'package:animations/secondpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Implicit Animations")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: _animate ? null : BorderRadius.circular(100),
              ),
              duration: const Duration(seconds: 1),
              curve: const SineCurve(count: 1),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: _animate ? null : BorderRadius.circular(100),
              ),
              duration: const Duration(seconds: 1),
              // curve: Curves.easeInQuint ,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _animate = !_animate;
                  });
                },
                child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Text("Animate Container")))),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: const Text("Next "),
            )
          ],
        ),
      ),
    );
  }
}

class SineCurve extends Curve {
  final double count;
  const SineCurve({this.count = 1});

  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 + 0.5;
  }
}
