import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
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
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.screenWidth * 0.05,
                      SizeConfig.screenHeight * 0.05,
                      0,
                      0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.find<HomePageController>().toggleDarkMode();
                        },
                        child: Icon(
                          Get.find<HomePageController>().isDarkMode.value
                              ? Icons.light_mode
                              : Icons.dark_mode,
                          color: Get.find<HomePageController>().isDarkMode.value
                              ? Colors.white
                              : Colors.black,
                          size: SizeConfig.screenHeight * 0.05,
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                            height: SizeConfig.screenHeight * 0.5,
                            width:SizeConfig.screenHeight * 0.5,
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
                                    'Player: ' +
                                        controller.player1Win.toString(),
                                    style: GoogleFonts.ropaSans(
            color: Get.find<HomePageController>().isDarkMode.value
                ? Colors.white
                : Colors.black,
            fontSize:SizeConfig.screenHeight*0.03,
            fontWeight: FontWeight.bold,
          )),
                                Text(
                                    'Computer: ' +
                                        controller.player2Win.value.toString(),
                                    style: GoogleFonts.ropaSans(
            color: Get.find<HomePageController>().isDarkMode.value
                ? Colors.white
                : Colors.black,
            fontSize:SizeConfig.screenHeight*0.03,
            fontWeight: FontWeight.bold,
          )),
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
