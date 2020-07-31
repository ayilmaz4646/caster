import "package:flutter/material.dart";
import 'package:flutter/semantics.dart';
import 'model/bookmark.dart';

void main() {
  runApp(MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}

class BookmarksPage extends StatelessWidget {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.com"),
    Bookmark("Google", "https://google.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookmark"),
      ),
      body: BookmarksListWidget(bookmarksList),
    );
  }
}
