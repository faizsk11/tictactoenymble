import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import 'package:integration_test/integration_test.dart';
import 'package:tictactoenymble/SizeConfig.dart';

import 'package:tictactoenymble/main.dart';
import 'package:tictactoenymble/routes/AppPages.dart';
import 'package:tictactoenymble/routes/AppRoutes.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
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

  

}
