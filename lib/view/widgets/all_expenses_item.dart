import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/models/all_expenses_item_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensexItem(itemModel: itemModel)
        : InActiveAllExpensexItem(itemModel: itemModel);
  }
}
