import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';

import '../../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transctions', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  int ActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
                if (ActiveIndex != index) {
                  setState(() {
                    ActiveIndex = index;
                  });
                }
              },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(drawerItemModel: drawerItems[index],isActive: ActiveIndex == index,),
            ),
          );
        });
  }
}
