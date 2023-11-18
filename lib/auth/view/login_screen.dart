import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_tally/auth/logic/login_controller.dart';
import 'package:i_tally/constants/responsive.dart'; // Make sure to import your Responsive class

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController ctrlLogin = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Responsive(
              mobile: _buildMobileTabletLogin(context, 'images/itally.png'),
              tablet: _buildMobileTabletLogin(context, 'images/itally.png'),
              desktop: _buildDesktopLogin(context, 'images/itally.png'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMobileTabletLogin(BuildContext context, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(imagePath, height: 150), // Image on top for mobile and tablet
        SizedBox(height: 32.0),
        _loginForm(context),
        _poweredByLogo(context), // Display the "powered by" logo
      ],
    );
  }

  Widget _buildDesktopLogin(BuildContext context, String imagePath) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(imagePath, height: 230), // Larger image on the left for desktop
            ),
            SizedBox(width: 32.0), // Spacing between image and login form
            Expanded(
              flex: 1,
              child: _loginForm(context),
            ),
            SizedBox(width: 32.0), // Spacing before the "powered by" logo
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: _poweredByLogo(context), // Larger image on the left for desktop
            ),
            SizedBox(width: 32.0), // Spacing between image and login form
          ],
        ),
      ],
    );
  }

  Widget _loginForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          controller: ctrlLogin.state.username,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          controller: ctrlLogin.state.password,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: ctrlLogin.login,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
            child: Text('Login', style: TextStyle(fontSize: 16)),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }

  Widget _poweredByLogo(BuildContext context) {
    // "Powered by" logo at the bottom or side of the form
    return Padding(
      padding: EdgeInsets.only(top: Responsive.isMobile(context) ? 20 : 0),
      child: Align(
        alignment: Responsive.isMobile(context) ? Alignment.center : Alignment.centerRight,
        child: Column(
          children: [
            Text(
              'Powered by',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),
            Image.asset('images/tsc.png', height: 80),
          ],
        ),
      ),
    );
  }
}
