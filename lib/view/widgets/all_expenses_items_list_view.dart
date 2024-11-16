import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_project/models/all_expenses_item_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List items = [
    const AllExpensesItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selected == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selected == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selected == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );

    // return Row(
    //   children: items.asMap().entries.map((e) {
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           selected = e.key;
    //           setState(() {});
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: e.key == 1 ? 12 : 0),
    //           child: AllExpensesItem(
    //             isSelected: selected == e.key,
    //             itemModel: e.value,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selected = index;
    });
  }
}
