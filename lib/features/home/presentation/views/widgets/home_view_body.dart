import 'package:book_store/core/utils/assets_data.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              height: MediaQuery.of(context).size.height * .25,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * .07),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
