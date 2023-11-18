import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_tally/api/api_service.dart';
import 'package:i_tally/auth/state/login_state.dart';
import 'package:i_tally/core/user_preference.dart';
import 'package:i_tally/models/api_responce.dart';
import 'package:i_tally/models/login_request.dart';
import 'package:i_tally/routes/routes_name.dart';
import 'package:i_tally/utils/utils.dart';

class LoginController extends GetxController{
  LoginState state = LoginState();

  String? validateUserNamevalue(String? value){
    if(value == null || value.isEmpty){
      return "Please insert username";
    }
  }

  login() async {
    var req = LoginRequest()
      ..LoginID = state.username!.text
      ..Password = state.password!.text
      ..ClientCode = "1005"
      ..AccessType = "Mobile"
      ..Product = "iTally"
      ..SessionID = ""
      ..LoginLocation = "0.00";

    try {
      APIResponse apiResponse = await state.apiservice.makeApiCall(
        request: req,
        object: "Login",
        action: "Login",
      );
      if(apiResponse.statusCode==9)
        {
          UserPreference.shared.setToken(apiResponse.iTallyData['Token']);
          print('Token is ${apiResponse.iTallyData['Token']}');
          Get.offAllNamed(RouteName.dashboardscreen);
        }
      else{
        Utils.errorSnackBar("Error", apiResponse.message.toString());
      }
    } catch (e) {
      // Error is already handled within the service
    }

    /*try {
      state.loading.value = true;
      final response = await state.apiRepo.post(req, object: "Login", action: "Login");
      state.loading.value = false;
      response.fold((l) {
        Utils.errorSnackBar("Error", l.message.toString());
      }, (r) {
        APIResponce apiResponse = APIResponce.fromJson(r as Map<String, dynamic>);
      });
    } catch (e) {
      state.loading.value = false;
      Fluttertoast.showToast(msg: e.toString(), timeInSecForIosWeb: 5);
    }*/
  }
}