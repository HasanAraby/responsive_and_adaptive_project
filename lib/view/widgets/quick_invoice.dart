import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_project/view/widgets/custom_button.dart';
import 'package:responsive_and_adaptive_project/view/widgets/latest_transaction.dart';
import 'package:responsive_and_adaptive_project/view/widgets/quick_invoice_form.dart';
import 'package:responsive_and_adaptive_project/view/widgets/quick_invoice_header.dart';
import 'package:responsive_and_adaptive_project/view/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          TitleTextField(
            hint: 'Enter Customer Name',
            title: 'Customer name',
          ),
          QuickInvoiceForm(),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Add more details',
                  textColor: Color(
                    0xFF4DB7F2,
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                  child: CustomButton(
                text: 'Send Money ',
              )),
            ],
          ),
        ],
      ),
    );
  }
}
