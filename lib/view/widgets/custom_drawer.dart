import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_project/models/drawer_item_model.dart';
import 'package:responsive_and_adaptive_project/models/user_info_model.dart';
import 'package:responsive_and_adaptive_project/view/widgets/active_and_inActive_drawer_item.dart';
import 'package:responsive_and_adaptive_project/view/widgets/drawer_items_listview.dart';
import 'package:responsive_and_adaptive_project/view/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesFrame,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemsListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSettings),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
