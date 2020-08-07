
import 'package:caster/model/bookmark.dart';
import 'package:caster/widget/bookmarks_list_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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