import 'dart:math';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';

import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class background extends GetWidget<HomePageController> {
 
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;


    return Obx((() => Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: controller.isDarkMode.value
              ? constant().DarkElementGradient
              : constant().LightelementGradient,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                bottom: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                left: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            Positioned(
                top: Random().nextInt(height.toInt()).toDouble(),
                right: Random().nextInt(width.toInt()).toDouble(),
                child: constant().circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  bottom: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  left: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
            if (kIsWeb)
              Positioned(
                  top: Random().nextInt(height.toInt()).toDouble(),
                  right: Random().nextInt(width.toInt()).toDouble(),
                  child: constant().circles),
          ],
        ))));
  }
}
