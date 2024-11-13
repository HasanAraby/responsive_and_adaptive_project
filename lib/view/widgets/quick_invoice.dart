import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_project/view/widgets/latest_transaction.dart';
import 'package:responsive_and_adaptive_project/view/widgets/quick_invoice_header.dart';
import 'package:responsive_and_adaptive_project/view/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          TitleTextField(
            hint: 'Enter Customer Name',
            title: 'Customer name',
          ),
        ],
      ),
    );
  }
}
