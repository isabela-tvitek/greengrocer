import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:motion_toast/motion_toast.dart';

class UtilsServices {
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }

  String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();

    return dateFormat.format(dateTime);
  }

  void showToast({
    required String message,
    bool isError = false,
    required context,
  }) {
    MotionToast(
      // icon: Icons.alarm,
      primaryColor: isError ? Colors.red : Colors.white,
      // title: Text("Custom Toast"),
      description: Text(message),
      width: 200,
      height: 50,
    ).show(context);
  }
}
