import 'package:book_store/features/home/presentation/views/widgets/home_widgets/best_seller_Listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .02),
          child: const BestSellerListViewItem(),
        );
      },
    );
  }
}
