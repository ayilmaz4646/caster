import "package:flutter/material.dart";
import 'package:caster/model/bookmark.dart';
import 'package:caster/widget/bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookmarksList.length,
        itemBuilder: (BuildContext context, int index) {
          return BookmarkListItemWidget(bookmarksList[index]);
        });
  }
}
