import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_project/view/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListtile(
              image: Assets.imagesFrame,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
