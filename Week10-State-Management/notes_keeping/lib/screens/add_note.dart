import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_keeping/providers/notes_provider.dart';
import 'package:notes_keeping/screens/home_screen.dart';
import 'package:provider/provider.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Edit Note"),
          actions: [
            Consumer<NotesProvider>(
              builder: (context, value, child) {
                return InkWell(
                    onTap: () {
                      String title = titleController.text;
                      String description = descriptionController.text;

                      if (title != "" || description != "") {
                        value.addItem(title, description);
                      }

                      print(value.notes);
                      Navigator.pop(context);
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Icon(Icons.check));
              },
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: TextFormField(
                controller: descriptionController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Start typing your notes',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ));
  }
}
