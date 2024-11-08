import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_project/core/utils/app_text_styles.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppTextStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppTextStyles.styleRegular12,
        ),
      ),
    );
  }
}
