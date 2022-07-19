import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Whole App Test", (WidgetTester tester) async {
    GoogleFonts.config.allowRuntimeFetching = false;

    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();

    expect(
        find.byWidgetPredicate((widget) =>
            widget is AppBar &&
            widget.title is Text &&
            (widget.title as Text).data!.startsWith("Tic Tac Toe")),
        findsOneWidget);

    await tester.pumpAndSettle(Duration(seconds: 1));
  });
}
