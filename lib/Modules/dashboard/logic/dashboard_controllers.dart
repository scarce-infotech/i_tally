import 'package:get/get.dart';
import 'package:i_tally/core/user_preference.dart';

class DashboardController extends GetxController {

  onInit() {
    super.onInit();
  }


  logout() {
    UserPreference.shared.removeToken();
   // Get.offAllNamed('/login');
  }
}