import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class cardHome extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Obx((() => Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: controller.isDarkMode.value
                  ? constant().DarkElementGradient
                  : constant().LightelementGradient,
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 0.06),
              border: Border.all(
                  color: controller.isDarkMode.value
                      ? constant().greenColor
                      : constant().redColor,
                  width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    Icons.smart_toy_outlined,
                    size: SizeConfig.screenHeight * 0.1,
                    color: controller.isDarkMode.value
                        ? constant().greenColor
                        : constant().redColor,
                  ),
                ),
                Text(
                  'Tap to Play with AI',
                  style: TextStyle(
                    fontFamily: 'SanRopa',
                    color: Get.find<HomePageController>().isDarkMode.value
                        ? constant().greenColor
                        : constant().redColor,
                      fontSize: SizeConfig.screenHeight * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
