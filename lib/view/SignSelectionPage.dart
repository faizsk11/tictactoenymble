import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
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
            constant().ThemeIcon,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'So whats your sign?',
                    style: TextStyle(
                      fontFamily: 'SanRopa',
                      color: Get.find<HomePageController>().isDarkMode.value
                          ? Colors.white
                          : Colors.black,
                      fontSize: SizeConfig.screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenWidth * 0.05),
                  child: InkWell(
                      onTap: () {
                        controller.Player1Sign = controller.SignSelection[0];
                        controller.Player2Sign = controller.SignSelection[1];
                        Get.toNamed('/gamePage');
                      },
                      child: CrossSelectionBox()),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenWidth * 0.05),
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
