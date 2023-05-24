import 'package:flutter/material.dart';
import 'package:notes_keeping/providers/theme_provider.dart';
import 'package:notes_keeping/screens/add_note.dart';
import 'package:notes_keeping/screens/fvrt_notes.dart';
import 'package:provider/provider.dart';

import '../providers/notes_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final Theme= Provider.of<ThemeProvider>(context);
     bool newval= false;
    return Scaffold(
      
        appBar: AppBar(
          title: const Text("All Notes"),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoriteNotes()));
                },
                child: const Icon(Icons.favorite_sharp)),
                Consumer<ThemeProvider>(
                  builder: (context, val, child) {
                   return Switch.adaptive(
                    
                  value: newval, 
                  onChanged:(value) {
                    if(value){
                      val.changeTheme(ThemeMode.dark);
                      newval=value;
                    }
                    else{
                      newval=value;
                      val.changeTheme(ThemeMode.light);
                    }
                  },); 
                  },
                  
                ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Consumer<NotesProvider>(
          builder: (context, value, child) {
            return ListView.separated(
              itemCount: value.notes.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final title = value.notes.keys.elementAt(index);
                final subtitle = value.notes.values.elementAt(index);
                return ListTile(
                  minLeadingWidth: 10,
                  contentPadding:
                      const EdgeInsets.only(top: 5, left: 15, right: 15),
                  leading: InkWell(
                      onTap: () {
                        value.addfvrt(title, subtitle);
                      },
                      child: Icon(value.favnotes.containsKey(title)
                          ? Icons.favorite
                          : Icons.favorite_border)),
                  title: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  trailing:
                      Text("${DateTime.now().hour}:${DateTime.now().minute}"),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddNote()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
