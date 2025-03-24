import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_styles.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context),
         
        ),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.blue),
         
        ),
        
      ),
      trailing: Container(
        width: 3,
        decoration: BoxDecoration(color: Colors.blue),
      ),
    );
  }
}
