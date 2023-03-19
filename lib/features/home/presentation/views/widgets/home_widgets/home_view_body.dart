import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:book_store/features/home/presentation/views/widgets/home_widgets/best_seller_listview.dart';
import 'package:book_store/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const FeaturedBooksListView(),
                SizedBox(height: MediaQuery.of(context).size.height * .07),
                const Text("Best Seller", style: Styles.textStyle18),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .08),
            child: const BestSellerListView(),
          ),
        )
      ],
    );
  }
}
