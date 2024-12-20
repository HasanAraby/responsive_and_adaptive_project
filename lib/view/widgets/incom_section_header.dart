import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_text_styles.dart';

class IncomSectionHeader extends StatelessWidget {
  const IncomSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppTextStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppTextStyles.styleMedium16(context),
              ),
              const SizedBox(width: 16),
              Transform.rotate(
                angle: -1.571,
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
