import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widgets/active_inActive_item.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widgets/user_info_listTile.dart';

import 'custom_drawer_widgets/drawer_items_listView.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Settings', image: Assets.imagesSettings)),
                InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout', image: Assets.imagesLogout)),
                SizedBox(
                  height: 24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
