import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_tally/core/user_preference.dart';
import 'package:i_tally/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? myTimer;

  @override
  void initState() {
    super.initState();
    myTimer = Timer(const Duration(seconds: 5), navigateToLogin);
  }

 /* void navigateToLogin() {
    if (mounted) {
      Get.offAllNamed(RouteName.login);
    }
  }*/


  void navigateToLogin() async {
    final isLoggedIn = await UserPreference.shared.getToken();
    Future.delayed(const Duration(seconds: 3), () {
      if (isLoggedIn.isEmpty) {
        Get.offAllNamed(RouteName.login);
      } else {
        Get.offAllNamed(RouteName.dashboardscreen);
      }
    });
  }

  @override
  void dispose() {
    myTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/welcome.gif"))
          ),
        ),
      ),
    );
  }
}
