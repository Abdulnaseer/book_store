import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/assets_data.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/home_widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailView);
      },
      child: SizedBox(
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text("J.K. Rowling", style: Styles.textStyle14.copyWith(color: kGreyColor)),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
