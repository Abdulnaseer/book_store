import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .02),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .01),
        Text("(245)", style: Styles.textStyle14.copyWith(color: kGreyColor)),
      ],
    );
  }
}
