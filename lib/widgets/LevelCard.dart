import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/controller/LevelPageController.dart';

class LevelCard extends GetWidget<LevelPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: (controller) {
          return Obx((() => SingleChildScrollView(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.find<LevelPageController>().level.value = 1;
                        Get.toNamed('/signSelectionPage');
                      },
                      child: Container(
                        height: SizeConfig.screenWidth * 0.12,
                        width: SizeConfig.screenWidth * 0.9,
                        decoration: BoxDecoration(
                          gradient:
                              Get.find<HomePageController>().isDarkMode.value
                                  ? constant().DarkElementGradient
                                  : constant().LightelementGradient,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.06),
                          border: Border.all(
                              color:
                                  Get.find<HomePageController>().isDarkMode.value
                                      ? constant().greenColor
                                      : constant().redColor,
                              width: 3),
                        ),
                        child: Center(
                          child: Text(
                            'Easy',
                            style:  TextStyle(
                              fontFamily: 'SanRopa',
                              color: Get.find<HomePageController>().isDarkMode.value?
                              constant().greenColor:
                              constant().redColor,
                             fontSize: SizeConfig.screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.find<LevelPageController>().level.value = 2;
                        Get.toNamed('/signSelectionPage');
                      },
                      child: Container(
                        height: SizeConfig.screenWidth * 0.12,
                        width: SizeConfig.screenWidth * 0.9,
                        decoration: BoxDecoration(
                          gradient:
                              Get.find<HomePageController>().isDarkMode.value
                                  ? constant().DarkElementGradient
                                  : constant().LightelementGradient,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.06),
                          border: Border.all(
                              color:
                                  Get.find<HomePageController>().isDarkMode.value
                                      ? constant().greenColor
                                      : constant().redColor,
                              width: 3),
                        ),
                        child: Center(
                          child: Text(
                            'Medium',
                            style: TextStyle(
                              fontFamily: 'SanRopa',
                              color: Get.find<HomePageController>().isDarkMode.value?
                              constant().greenColor:
                              constant().redColor,
                             fontSize: SizeConfig.screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.find<LevelPageController>().level.value = 3;
                        Get.toNamed('/signSelectionPage');
                      },
                      child: Container(
                        height: SizeConfig.screenWidth * 0.12,
                        width: SizeConfig.screenWidth * 0.9,
                        decoration: BoxDecoration(
                          gradient:
                              Get.find<HomePageController>().isDarkMode.value
                                  ? constant().DarkElementGradient
                                  : constant().LightelementGradient,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.screenWidth * 0.06),
                          border: Border.all(
                              color:
                                  Get.find<HomePageController>().isDarkMode.value
                                      ? constant().greenColor
                                      : constant().redColor,
                              width: 3),
                        ),
                        child: Center(
                          child: Text(
                            'Difficult',
                            style: TextStyle(
                              fontFamily: 'SanRopa',
                              color: Get.find<HomePageController>().isDarkMode.value?
                              constant().greenColor:
                              constant().redColor,
                             fontSize: SizeConfig.screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          )));
        });
  }
}
