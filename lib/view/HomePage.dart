import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/widgets/background.dart';
import 'package:tictactoenymble/widgets/cardHome.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: SizedBox(
                        width: SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenWidth * 0.4,
                        child: InkWell(
                            onTap: () {
                              Get.toNamed('/levelPage');
                            },
                            child: cardHome()))),
                const Padding(padding: EdgeInsets.only(bottom: 100)),
                ShaderMask(
                  shaderCallback: (rect) {
                    return controller.isDarkMode.value
                        ? constant().LightelementGradient.createShader(rect)
                        : constant().DarkElementGradient.createShader(rect);
                  },
                  child: Text('More Options Coming Soon!',
                      style: GoogleFonts.ropaSans(
                        color: Get.find<HomePageController>().isDarkMode.value
                            ? Colors.white
                            : Colors.black,
                        fontSize: SizeConfig.screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          ]))),
    );
  }
}
