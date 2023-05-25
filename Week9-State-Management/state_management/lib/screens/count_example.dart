// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    super.initState();
    final countProvider= Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 1),
    (timer) {
      countProvider.countInc();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider= Provider.of<CountProvider>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count with Multi-Provider"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Consumer<CountProvider>(
            builder: (context, value, child) {
              print("rebuild only Column widget");
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Counter:   ${value.count}",
            style: const TextStyle(fontSize: 30)),
            Text("Timenow:   ""${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
            style: const TextStyle(fontSize: 30)),
                ],
              );
            }
          )),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          countProvider.countInc();
        },
        child: const Icon(Icons.add),
      ),);
  }
}
