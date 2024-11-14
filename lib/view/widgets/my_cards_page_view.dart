import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const MyCard();
        });
  }
}
