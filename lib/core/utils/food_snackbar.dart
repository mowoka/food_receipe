import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackStatus {
  info,
  warning,
  danger,
}

Color getSnackStatus(SnackStatus status) {
  switch (status) {
    case SnackStatus.info:
      return Colors.lightBlue;
    case SnackStatus.warning:
      return Colors.orangeAccent;
    case SnackStatus.danger:
      return Colors.redAccent;
    default:
      return Colors.lightBlue;
  }
}

void showSnackbar({
  required String title,
  required String message,
  required SnackStatus status,
}) {
  Get.snackbar(
    title,
    message,
    colorText: Colors.white,
    backgroundColor: getSnackStatus(status),
    icon: const Icon(
      Icons.add_alert_outlined,
      color: Colors.white,
    ),
  );
}
