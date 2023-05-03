import 'package:advanceui/fifthscreen.dart';
import 'package:flutter/material.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({super.key});

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  bool _on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestures"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.lightbulb_outline,
              size: 400,
              color: _on
                  ? Colors.yellow
                  : const Color.fromARGB(179, 228, 226, 226),
              shadows: _on
                  ? [
                      const Shadow(
                          color: Color.fromARGB(255, 240, 225, 86),
                          blurRadius: 10)
                    ]
                  : null,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  _on = !_on;
                });
              },
              child: Container(
                height: 140,
                width: 90,
                decoration: BoxDecoration(
                    color: _on ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(child: Text(_on ? "Switch ON" : "Switch OFF")),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Silvers()));
                },
                child: const Text("Next"))
          ],
        ),
      ),
    );
  }
}
