import 'package:caster/util/navigation_util.dart';
import "package:flutter/material.dart";
import 'package:caster/model/bookmark.dart';

// ignore: must_be_immutable
class BookmarkGridItemWidget extends StatelessWidget {
  Bookmark bookmark;

  BookmarkGridItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () => navigateToViewBookmarkPage(bookmark, context),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // ignore: deprecated_member_use
                Text(bookmark.title, style: Theme.of(context).textTheme.title),
                SizedBox(height: 6),
                // ignore: deprecated_member_use
                Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
              ]),
        ),
      ),
    );
  }
}
