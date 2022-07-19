import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class cardHome extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Obx((() => Center(
          child: Container(
            height: SizeConfig.screenWidth * 0.5,
            width: SizeConfig.screenWidth * 0.5,
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
                    size: MediaQuery.of(context).size.height * 0.1,
                    color: controller.isDarkMode.value
                        ? constant().greenColor
                        : constant().redColor,
                  ),
                ),
                Text('Tap to Play with AI',
                    style: GoogleFonts.ropaSans(
                      color: controller.isDarkMode.value
                          ? constant().greenColor
                          : constant().redColor,
                      fontSize: SizeConfig.screenHeight * 0.025,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        )));
  }
}
