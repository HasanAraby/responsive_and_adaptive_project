import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_project/models/user_info_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/user_info_listTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static List items = [
    UserInfoModel(
        image: Assets.imagesLightFrame,
        title: 'Madrani Andi',
        subTitle: 'madraniandi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesVeryDarkFrame,
        title: 'Josua Nunito',
        subTitle: 'madraniandi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'madraniandi20@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListtile(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListtile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
