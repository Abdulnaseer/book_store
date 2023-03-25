import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .02),
        const Text("4.8", style: Styles.textStyle16),
        SizedBox(width: MediaQuery.of(context).size.width * .01),
        Opacity(
            opacity: .5,
            child: Text("(245)", style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600))),
      ],
    );
  }
}
