import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/models/transaction_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static List items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawl: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 At 4:00 pm',
      amount: r'$12,000',
      isWithdrawl: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 At 2:00 am',
      amount: r'$20,129',
      isWithdrawl: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return TransactionItem(transactionModel: items[index]);
    //     });
  }
}
