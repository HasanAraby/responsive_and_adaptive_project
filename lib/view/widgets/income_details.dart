import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_text_styles.dart';
import 'package:responsive_and_adaptive_project/models/item_details_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static List items = [
    ItemDetailsModel(
        color: const Color(0xFF208BC7), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: const Color(0xFF4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: const Color(0xFF064060), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(
        color: const Color(0xFFE2DECD), title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            itemDetailsModel: items[index],
          );
        });
  }
}
