import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static late double screenWidth=0.0;
  static late double screenHeight=0.0;

  void init(BoxConstraints constraints) {
    if (constraints.maxWidth < constraints.maxHeight) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
    } else if(kIsWeb) {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
    }
  }
}
