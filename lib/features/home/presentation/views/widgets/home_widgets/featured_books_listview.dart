import 'package:book_store/features/home/presentation/views/widgets/home_widgets/featured_listview_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: FeaturedListViewItem(),
          );
        }),
      ),
    );
  }
}