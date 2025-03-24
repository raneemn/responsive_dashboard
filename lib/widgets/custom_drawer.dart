import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widgets/user_info_listTile.dart';

import 'custom_drawer_widgets/drawer_items_listView.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
          const SizedBox(
            height: 8,
          ),
          Expanded(child: DrawerItemsListView())
        ],
      ),
    );
  }
}
