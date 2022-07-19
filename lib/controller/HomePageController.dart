import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/widgets/CrossSign.dart';
import 'package:tictactoenymble/widgets/TickSign.dart';

class HomePageController extends GetxController {
  RxBool isDarkMode = Get.isDarkMode.obs;

  var SignSelection = [CrossSign(), TickSign()];
  var Player1Sign;
  var Player2Sign;
  void toggleDarkMode() {
    isDarkMode.value = !isDarkMode.value;
    update();
  }
}
