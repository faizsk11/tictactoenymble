import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/controller/LevelPageController.dart';
import 'package:tictactoenymble/widgets/CrossSelectionBox.dart';
import 'package:tictactoenymble/widgets/LevelCard.dart';
import 'package:tictactoenymble/widgets/TickSelectionBox.dart';
import 'package:tictactoenymble/widgets/background.dart';

class LevelPage extends GetView<LevelPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: (controller) {
          return Scaffold(
            body: Obx((() => Stack(children: [
                  background(),
                  constant().ThemeIcon,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'How Good are u? Select ur level',
                          style: TextStyle(
                            fontFamily: 'SanRopa',
                            color:
                                Get.find<HomePageController>().isDarkMode.value
                                    ? Colors.white
                                    : Colors.black,
                            fontSize: SizeConfig.screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: SizeConfig.screenHeight * 0.3,
                          child: LevelCard()),
                    ],
                  )
                ]))),
          );
        });
  }
}
