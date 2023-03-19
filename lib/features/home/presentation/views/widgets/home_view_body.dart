import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/assets_data.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_Listview_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          SizedBox(height: MediaQuery.of(context).size.height * .07),
          const Text("Best Seller", style: Styles.textStyle18),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}
