import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class TickSelectionBox extends GetWidget<HomePageController> {
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
              border: Border.all(color: constant().greenColor, width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Icon(Icons.done,
                      size: SizeConfig.screenHeight * 0.1,
                      color: constant().greenColor),
                ),
                Text(
                  'Tap to Select',
                  style: GoogleFonts.ropaSans(
                    color: constant().greenColor,
                    fontSize: SizeConfig.screenHeight * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
