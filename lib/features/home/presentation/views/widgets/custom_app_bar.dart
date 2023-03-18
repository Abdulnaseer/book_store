import 'package:book_store/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        // horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.width * 0.1,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: MediaQuery.of(context).size.width * 0.05,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: MediaQuery.of(context).size.width * 0.06,
            ),
          ),
        ],
      ),
    );
  }
}
