import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class CrossSign extends GetWidget{

  @override
  Widget build(BuildContext context) {
    return  Center(
                  child: Icon(Icons.close,
                      size: SizeConfig.screenHeight * 0.1,
                      color:constant().redColor)
                );
  }
}