import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_and_adaptive_project/view/widgets/income_section.dart';
import 'package:responsive_and_adaptive_project/view/widgets/my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}