import 'package:flutter/material.dart';
import 'package:notes_keeping/providers/notes_provider.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class FavoriteNotes extends StatelessWidget {
  const FavoriteNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Notes"),
      ),
      body: Consumer<NotesProvider>(
        builder: (context, value, child) {
          return GridView.builder(
            itemCount: value.favnotes.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              final title = value.favnotes.keys.elementAt(index);
              final subtitle = value.favnotes.values.elementAt(index);
              return Card(
                color: Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          // color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          // color: Colors.grey,
                          fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
