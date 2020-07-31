import "package:flutter/material.dart";
import 'package:caster/model/bookmark.dart';

class BookmarkListItemwidget extends StatelessWidget {
  Bookmark bookmark;

  BookmarkListItemwidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          // ignore: deprecated_member_use
          Text(bookmark.title, style: Theme.of(context).textTheme.title),
          // ignore: deprecated_member_use
          Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
        ]

      ),
    );
  }
}