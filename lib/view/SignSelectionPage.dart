import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/widgets/CrossSelectionBox.dart';
import 'package:tictactoenymble/widgets/CrossSign.dart';
import 'package:tictactoenymble/widgets/TickSelectionBox.dart';
import 'package:tictactoenymble/widgets/TickSign.dart';
import 'package:tictactoenymble/widgets/background.dart';

class SignSelectionPage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
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
                      print('dark mode');
                      controller.toggleDarkMode();
                    },
                    child: Icon(
                      controller.isDarkMode.value
                          ? Icons.light_mode
                          : Icons.dark_mode,
                      color: controller.isDarkMode.value
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
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('So whats your sign?',
                      style: GoogleFonts.ropaSans(
                        color: Get.find<HomePageController>().isDarkMode.value
                            ? Colors.white
                            : Colors.black,
                        fontSize: SizeConfig.screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
                  child: InkWell(
                      onTap: () {
                        controller.Player1Sign = controller.SignSelection[0];
                        controller.Player2Sign = controller.SignSelection[1];
                        Get.toNamed('/gamePage');
                      },
                      child: CrossSelectionBox()),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
                  child: InkWell(
                      onTap: () {
                        controller.Player1Sign = controller.SignSelection[1];
                        controller.Player2Sign = controller.SignSelection[0];
                        Get.toNamed('/gamePage');
                      },
                      child: TickSelectionBox()),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
