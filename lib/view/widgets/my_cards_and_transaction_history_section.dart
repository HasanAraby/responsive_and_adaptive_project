import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_project/view/widgets/my_cards_section.dart';
import 'package:responsive_and_adaptive_project/view/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}