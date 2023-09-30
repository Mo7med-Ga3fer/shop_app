import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Home', style: TextStyles.textStyle30, textAlign: TextAlign.center,)
      ],
    );
  }
}