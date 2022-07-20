import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import 'package:integration_test/integration_test.dart';

import 'package:tictactoenymble/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Whole App Test", (WidgetTester tester) async {
    
    await tester.pumpWidget(
      MyApp()
    );
    await tester.pumpAndSettle();

    expect(
        find.byWidget(Text("Tic Tac Toe")),
        findsOneWidget);

    await tester.pumpAndSettle(Duration(seconds: 1));
  });
}
