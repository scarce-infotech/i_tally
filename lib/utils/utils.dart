import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Utils {
  static bool isValidEmail(String email) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }

  static errorSnackBar(String title, String message) {
    Get.snackbar(title, message
        , messageText: Text(message, style: const TextStyle(color: Colors.black, fontSize: 17))
        , snackPosition: SnackPosition.BOTTOM
        , backgroundColor: Colors.red);
  }

  ///Converting given int to currency format
  ///Example input:10000, returns 10,000₮
  static String formatCurrency(num amount, {bool withSymbol = true}) {
    var symbol = withSymbol ? '₹ ' : '';
    var currencyFormat = NumberFormat.currency(
      // Change to your desired currency symbol
      symbol: '',
      decimalDigits: 2, // Number of decimal digits to display
    );

    return '$symbol${currencyFormat.format(amount)}';
  }

  static DateFormat getDateFormatter() {
    return DateFormat('dd MMM yy');
  }

  static String formatDate(DateTime dateTime) {
    return getDateFormatter().format(dateTime);
  }
}
