import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';

class constant {
  Color redColor = Color.fromARGB(255, 255, 50, 0);
  Color greenColor = Color.fromARGB(255, 0, 255, 8);
  var DarkElementGradient = LinearGradient(
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 1.0),
    colors: [
      const Color(0xff232323),
      const Color(0xff000000),
      const Color(0xff232323)
    ],
    stops: [0.0, 0.489, 1.0],
  );

  var LightelementGradient = LinearGradient(
    begin: Alignment(0.0, -1.0),
    end: Alignment(0.0, 1.0),
    colors: [
      const Color(0xffffffff),
      const Color(0xffE8E8E8),
      const Color(0xffffffff),
    ],
    stops: [0.0, 0.489, 1.0],
  );

  var winEmoji = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
      ),
      child: Image.asset(
        'assets/win1.png',
        height: 100,
        width: 100,
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
      ),
      child: Image.asset(
        'assets/win2.png',
        height: 100,
        width: 100,
      ),
    ),
  ];

  var loseEmoji = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
      ),
      child: Image.asset(
        'assets/lose1.png',
        height: 100,
        width: 100,
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
      ),
      child: Image.asset(
        'assets/lose2.png',
        height: 100,
        width: 100,
      ),
    ),
  ];

  var drawEmoji = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
      ),
      child: Image.asset(
        'assets/draw1.png',
        height: 100,
        width: 100,
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:Colors.transparent,
      ),
      child: Image.asset(
        'assets/draw2.png',
        height: 100,
        width: 100,
      ),
    ),
  ];

  var winString = [
    'You are a Genius! Hats off',
    'How did you do that? Awesome!',
  ];

  var loseString = [
    'Swear on God you will defeat me',
    'I am the best! Not you!',
  ];

  var drawString = [
    'Neither of us is the best',
    'We are both equally good',
  ];
}
