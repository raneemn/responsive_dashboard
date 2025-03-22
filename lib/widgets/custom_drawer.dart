import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserInfoListTile(image: Assets.imagesAvatar3, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com')
        ],
      ),
    );
  }
}