import 'package:caster/model/bookmark.dart';
import 'package:caster/page/add_bookmark_page.dart';
import 'package:caster/page/view_bookmark_page.dart';
import 'package:flutter/material.dart';

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)),
  );
}

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => AddBookmarkPage()),
  );
}
