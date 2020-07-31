import "package:flutter/material.dart";
import 'package:caster/model/bookmark.dart';
import 'package:caster/widget/bookmark_list_item_widget.dart';


class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarksList;
  BookmarksListWidget(this.bookmarksList);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BookmarkListItemWidget(bookmarksList[0]),
        BookmarkListItemWidget(bookmarksList[0]),
      ],
    );
  }
}