import 'package:get/get.dart';
import 'package:tictactoenymble/routes/AppRoutes.dart';
import 'package:tictactoenymble/routes/bindings.dart';
import 'package:tictactoenymble/view/GamePage.dart';
import 'package:tictactoenymble/view/HomePage.dart';
import 'package:tictactoenymble/view/LevelPage.dart';
import 'package:tictactoenymble/view/SignSelectionPage.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: bindings(),
      transition: Transition.rightToLeftWithFade
    ),
    GetPage(
      name: AppRoutes.LEVEL,
      page: () => LevelPage(),
      binding: bindings(),
      transition: Transition.rightToLeftWithFade
    ),
    GetPage(
      name: AppRoutes.GAME,
      page: () => GamePage(),
      binding: bindings(),
      transition: Transition.rightToLeftWithFade
    ),
      GetPage(
      name: AppRoutes.SIGNSELECTION,
      page: () => SignSelectionPage(),
      binding: bindings(),
      transition: Transition.rightToLeftWithFade
    ),
  ];
}
