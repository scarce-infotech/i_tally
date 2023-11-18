import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:i_tally/api/api_service.dart';
import 'package:i_tally/models/login.dart';
import 'package:i_tally/repository/login_repository.dart';

class LoginState{

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  var loading = false.obs;

  final usernameFocus = FocusNode();
  final passwordFocus = FocusNode();

  Login login = Login();
  final apiRepo = PostRepository();
  final apiservice = ApiService();

  // https://itallyapi9.tallysupportcenter.com/api/
}