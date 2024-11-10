import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_project/models/drawer_item_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/drawer_item.dart';
import 'package:responsive_and_adaptive_project/view/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAcount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestment),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListtile(
              image: Assets.imagesFrame,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(drawerItemModel: items[index]),
              );
            },
          )
        ],
      ),
    );
  }
}
