import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('images/itally.png')
            ),
            ...List.generate(
              sideMenuItems.length,
                  (index) =>
                  DrawerListTile(
                    title: sideMenuItems[index].title,
                    svgSrc: sideMenuItems[index].svgSrc,
                    press: () {},
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }): super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
        color: Color(0xFFE53935),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

class SideMenuModel {
  final String title;
  final String svgSrc;
  const SideMenuModel({
    required this.title,
    required this.svgSrc,
  });
}

List<SideMenuModel> sideMenuItems = [
  SideMenuModel(
    title: 'Dashboard',
    svgSrc: 'icons/menu_dashboard.svg',
  ),
  SideMenuModel(
    title: 'Transaction',
    svgSrc: 'icons/menu_tran.svg',
  ),
  SideMenuModel(
    title: 'Task',
    svgSrc: 'icons/menu_task.svg',
  ),
  SideMenuModel(
    title: 'Documents',
    svgSrc: 'icons/menu_doc.svg',
  ),
  SideMenuModel(
    title: 'Store',
    svgSrc: 'icons/menu_store.svg',
  ),
  SideMenuModel(
    title: 'Notification',
    svgSrc: 'icons/menu_notification.svg',
  ),
  SideMenuModel(
    title: 'Profile',
    svgSrc: 'icons/menu_profile.svg',
  ),
  SideMenuModel(
    title: 'Settings',
    svgSrc: 'icons/menu_setting.svg',
  ),
  SideMenuModel(
    title: 'Logout',
    svgSrc: 'icons/menu_setting.svg',
  ),
];