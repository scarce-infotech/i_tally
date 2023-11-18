import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  UserPreference._();
  static final shared = UserPreference._();

  Future<bool> setToken(String token) async =>
      (await SharedPreferences.getInstance()).setString("token", token);

  Future<String> getToken() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString('token') ?? '';
  }

  Future<bool> removeToken() async =>
      (await SharedPreferences.getInstance()).clear();

  void appLogout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

// static Future<bool> setAppData(ResponseSmartAuditor appData) async =>
//     (await SharedPreferences.getInstance())
//         .setString("app_data", appData.toJson());

// static Future<String> getAppData() async =>
//     (await SharedPreferences.getInstance()).get("app_data").toString();
}
