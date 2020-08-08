import 'package:caster/widget/bookmark_grid_item_widget.dart';
import "package:flutter/material.dart";
import 'package:caster/model/bookmark.dart';
import 'package:caster/widget/bookmark_list_item_widget.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
          itemCount: bookmarksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 6, childAspectRatio: 1.6),
          itemBuilder: (BuildContext context, int index) {
            return BookmarkGridItemWidget(bookmarksList[index]);
          }),
    );
  }
}
