import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class CrossSelectionBox extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Obx((() => Center(
          child: Container(
            height: SizeConfig.screenWidth * 0.4,
            width: SizeConfig.screenWidth * 0.4,
            decoration: BoxDecoration(
              gradient: controller.isDarkMode.value
                  ? constant().DarkElementGradient
                  : constant().LightelementGradient,
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth * 0.06),
              border: Border.all(color: constant().redColor, width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    Icons.close_outlined,
                    size: SizeConfig.screenHeight * 0.1,
                    color: constant().redColor,
                  ),
                ),
                Text(
                  'Tap to Select',
                  style: TextStyle(
                    fontFamily: 'SanRopa',
                    color: constant().redColor,
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
