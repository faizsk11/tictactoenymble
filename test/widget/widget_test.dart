import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  TestWidgetsFlutterBinding.ensureInitialized();


  late TextStyle expectedStyle;

  setUpAll(() {
    expectedStyle = GoogleFonts.getFont('Ropa Sans');
  });

  test('Can test fonts', () {
    final styleFunc = GoogleFonts.asMap()['ABeeZee']!;
    expect(styleFunc(), equals(expectedStyle));
  });
}