import 'package:flutter/material.dart';

class Silvers extends StatelessWidget {
  const Silvers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shaders"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: ((context, index) {
        return const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Dan Brown"),
          subtitle: Text("Software Developer"),
          trailing: Icon(Icons.star_outline),
          hoverColor: Colors.grey, 
        );
      })),
    );
  }
}