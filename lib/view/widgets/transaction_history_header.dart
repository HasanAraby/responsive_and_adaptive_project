import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_text_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppTextStyles.styleSemiBold20(context),
        ),
        Text(
          'see all',
          style: AppTextStyles.styleMedium16(context)
              .copyWith(color: const Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
