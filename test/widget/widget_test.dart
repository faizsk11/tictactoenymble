import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/GameController.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/main.dart';
import 'package:tictactoenymble/routes/AppPages.dart';
import 'package:tictactoenymble/routes/AppRoutes.dart';
import 'package:tictactoenymble/view/GamePage.dart';
import 'package:tictactoenymble/view/HomePage.dart';
import 'package:tictactoenymble/view/LevelPage.dart';
import 'package:tictactoenymble/view/SignSelectionPage.dart';
import 'package:tictactoenymble/widgets/background.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'MyApp Test',
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      SizeConfig.screenHeight = 600;
      SizeConfig.screenWidth = 600;
      await tester.pumpWidget(
        GetMaterialApp(
          title: "Tic Tac Toe",
          initialRoute: AppRoutes.HOME,
          getPages: AppPages.list,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'RopaSans'),
          themeMode: ThemeMode.system,
        ),
      );

      // Verify that our counter starts at 0.
      expect(find.byWidget(Container()), findsNothing);
    },
  );

  testWidgets(
    'GamePage Test',
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      Get.put(HomePageController());
      Get.put(GameController());
      SizeConfig.screenHeight = 600;
      SizeConfig.screenWidth = 600;
      constant().LightelementGradient;
      constant().DarkElementGradient;
      await tester.pumpWidget(
        MediaQuery(
            data: const MediaQueryData(),
            child: Directionality(
                textDirection: TextDirection.ltr, child: GamePage())),
      );

      // Verify that our counter starts at 0.
      expect(find.byWidget(Container()), findsNothing);
    },
  );
  testWidgets(
    'HomePage Test',
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      Get.put(HomePageController());
      SizeConfig.screenHeight = 600;
      SizeConfig.screenWidth = 600;
      constant().LightelementGradient;
      constant().DarkElementGradient;
      await tester.pumpWidget(
        MediaQuery(
            data: const MediaQueryData(),
            child: Directionality(
                textDirection: TextDirection.ltr, child: HomePage())),
      );

      // Verify that our counter starts at 0.
      expect(find.byWidget(Container()), findsNothing);
    },
  );

  testWidgets(
    'LevelPage Test',
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      Get.put(HomePageController());
      SizeConfig.screenHeight = 1000;
      SizeConfig.screenWidth = 1000;
      constant().LightelementGradient;
      constant().DarkElementGradient;
      await tester.pumpWidget(
        MediaQuery(
            data: const MediaQueryData(),
            child: Directionality(
                textDirection: TextDirection.ltr, child: LevelPage())),
      );

      // Verify that our counter starts at 0.
      expect(find.byWidget(Container()), findsNothing);
    },
  );

  testWidgets(
    'SignSelection Test',
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      Get.put(HomePageController());
      SizeConfig.screenHeight = 600;
      SizeConfig.screenWidth = 600;
      constant().LightelementGradient;
      constant().DarkElementGradient;
      await tester.pumpWidget(
        MediaQuery(
            data: const MediaQueryData(),
            child: Directionality(
                textDirection: TextDirection.ltr, child: SignSelectionPage())),
      );

      // Verify that our counter starts at 0.
      expect(find.byWidget(Container()), findsNothing);
    },
  );
  
}
