import 'package:caster/page/view_bookmark_page.dart';
import 'package:caster/util/navigation_util.dart';
import "package:flutter/material.dart";
import 'package:caster/model/bookmark.dart';

// ignore: must_be_immutable
class BookmarkListItemWidget extends StatelessWidget {
  Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigateToViewBookmarkPage(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ignore: deprecated_member_use
            Text(bookmark.title, style: Theme.of(context).textTheme.title),
            SizedBox(height: 6),
            // ignore: deprecated_member_use
            Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
          ]

        ),
      ),
    );
  }
}