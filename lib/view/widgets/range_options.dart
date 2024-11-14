import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_text_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppTextStyles.styleMedium16,
          ),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}