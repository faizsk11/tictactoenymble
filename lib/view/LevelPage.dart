import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.screenWidth * 0.05,
                        SizeConfig.screenHeight * 0.05, 0, 0),
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
                            color:
                                Get.find<HomePageController>().isDarkMode.value
                                    ? Colors.white
                                    : Colors.black,
                            size: SizeConfig.screenHeight * 0.05,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text('How Good are u? Select ur level',
                            style: GoogleFonts.ropaSans(
                              color: Get.find<HomePageController>()
                                      .isDarkMode
                                      .value
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: SizeConfig.screenHeight * 0.03,
                              fontWeight: FontWeight.bold,
                            )),
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
