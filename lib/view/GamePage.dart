import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/GameController.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/widgets/BoardWidget.dart';
import 'package:tictactoenymble/widgets/background.dart';

class GamePage extends GetView<GameController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: (controller) {
          return Scaffold(
            body: Stack(
              children: [
                background(),
                constant().ThemeIcon,
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                            height: SizeConfig.screenWidth * 0.7,
                            width: SizeConfig.screenWidth * 0.7,
                            child: BoardWidget()),
                      ),
                      GetBuilder<GameController>(
                        init: GameController(),
                        builder: (controller) {
                          return Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.screenHeight * 0.1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Player: ' + controller.player1Win.toString(),
                                  style: TextStyle(
                                    fontFamily: 'SanRopa',
                                    color: Get.find<HomePageController>()
                                            .isDarkMode
                                            .value
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: SizeConfig.screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Computer: ' +
                                      controller.player2Win.value.toString(),
                                  style: TextStyle(
                                    fontFamily: 'SanRopa',
                                    color: Get.find<HomePageController>()
                                            .isDarkMode
                                            .value
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: SizeConfig.screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
