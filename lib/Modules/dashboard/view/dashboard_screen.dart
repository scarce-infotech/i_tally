import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_tally/Modules/dashboard/logic/dashboard_controllers.dart';
import 'package:i_tally/Modules/side_menu/view/side_menu.dart';
import 'package:i_tally/constants/responsive.dart';
import 'package:i_tally/routes/routes_name.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.put(DashboardController());

    return Scaffold(
   /*   drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("i_Tally"),
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                controller.logout();
                Get.offAllNamed(RouteName.login);
              },
            ),
          ],
        ),
      ),*/
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                  child: SideMenu()
              ),
            Expanded(
              flex: 5,
                child: SizedBox(width: 35),
            ),
          ],
        ) ,

      )
    );
  }
}
