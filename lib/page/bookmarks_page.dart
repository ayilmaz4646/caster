import 'package:caster/util/navigation_util.dart';
import 'package:flutter/material.dart';
import 'package:caster/model/bookmark.dart';
import 'package:caster/widget/bookmarks_list_widget.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () => navigateToAddBookmarkPage(context),
        label: Text("Add"),
      ),
    );
  }
}