import 'package:flutter/foundation.dart';

class NotesProvider with ChangeNotifier {
  Map<String, String> _notes = {};
  Map<String, String> get notes => _notes;
  Map<String, String> _favnotes = {};
  Map<String, String> get favnotes => _favnotes;

  void addItem(String title, String description) {
    notes[title] = description;
    notifyListeners();
  }

  void addfvrt(String title, String subtitle) {
    if (!favnotes.containsKey(title)) {
      favnotes[title] = subtitle;
    } else {
      favnotes.remove(title);
    }
    notifyListeners();
  }
}
