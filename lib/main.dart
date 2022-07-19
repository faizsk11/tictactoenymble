import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/routes/AppPages.dart';
import 'package:tictactoenymble/routes/AppRoutes.dart';
import 'dart:math';

import 'package:tictactoenymble/widgets/background.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig().init(constraints);
        return GetMaterialApp(
          title: "Tic Tac Toe",
          initialRoute: AppRoutes.HOME,
          getPages: AppPages.list,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
        );
      },
    );
  }
}
