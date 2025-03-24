import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          drawerItemModel.title,
          style: isActive ? AppStyles.styleMedium16(context).copyWith(color: Colors.blue) : AppStyles.styleMedium16(context),
         
        ),
      ),
    );
  }
}
