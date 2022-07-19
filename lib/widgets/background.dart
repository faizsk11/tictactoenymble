import 'dart:math';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';

import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class background extends GetWidget<HomePageController> {
  var DarkBackGroundColour = LinearGradient(
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 1.0),
    colors: [
      const Color(0xff232323),
      const Color(0xff000000),
      const Color(0xff232323)
    ],
    stops: [0.0, 0.489, 1.0],
  );
  var LightBackGroundColour = LinearGradient(
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 1.0),
    colors: [
      const Color(0xffffffff),
      const Color(0xffE8E8E8),
      const Color(0xffffffff),
    ],
    stops: [0.0, 0.489, 1.0],
  );
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    final circles = Obx((() => Container(
          height: SizeConfig.screenWidth * 0.2,
          width: SizeConfig.screenWidth * 0.2,
          decoration: BoxDecoration(
            gradient: controller.isDarkMode.value
                ? constant().DarkElementGradient
                : constant().LightelementGradient,
            shape: BoxShape.circle,
          ),
        )));

    return Obx((() => Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: controller.isDarkMode.value
              ? DarkBackGroundColour
              : LightBackGroundColour,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: circles),
          ],
        ))));
  }
}
