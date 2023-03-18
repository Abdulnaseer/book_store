import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        const Text(
          "Read free Books",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
