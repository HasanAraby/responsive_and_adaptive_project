import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_text_styles.dart';
import 'package:responsive_and_adaptive_project/models/all_expenses_item_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/all_expenses_item_header.dart';

class InActiveAllExpensexItem extends StatelessWidget {
  const InActiveAllExpensexItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppTextStyles.styleMedium16,
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppTextStyles.styleRegular14,
          ),
          const SizedBox(height: 12),
          Text(
            itemModel.price,
            style: AppTextStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensexItem extends StatelessWidget {
  const ActiveAllExpensexItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imageBackground: Colors.white.withOpacity(0.1000000014901),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppTextStyles.styleMedium16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppTextStyles.styleRegular14
                .copyWith(color: const Color(0xFFFAFAFA)),
          ),
          const SizedBox(height: 12),
          Text(
            itemModel.price,
            style: AppTextStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
