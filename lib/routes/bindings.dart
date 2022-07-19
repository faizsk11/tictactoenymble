import 'package:get/get.dart';
import 'package:tictactoenymble/controller/GameController.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/controller/LevelPageController.dart';


class bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<LevelPageController>(() => LevelPageController());
    Get.lazyPut<GameController>(() => GameController());
  }
}