import 'package:get/get.dart';
import 'package:i_tally/Modules/dashboard/view/dashboard_screen.dart';
import 'package:i_tally/auth/view/login_screen.dart';
import 'package:i_tally/auth/view/splash_screen.dart';
import 'package:i_tally/routes/routes_name.dart';

class AppRoutes{
  static appRoutes() => [
    GetPage(name: RouteName.splash, page: () => SplashScreen()),
    GetPage(name: RouteName.login, page: () => LoginScreen()),
    GetPage(name: RouteName.dashboardscreen, page: () => DashBoardScreen()),
  ];
}