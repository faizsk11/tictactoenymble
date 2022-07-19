import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/controller/LevelPageController.dart';

class GameController extends GetxController {
  var player1Win = 0.obs;
  var player2Win = 0.obs;
  var draw = 0.obs;
  var round = 0.obs;

  RxList<int> board = List.generate(9, (index) => 0).obs;
  RxInt currentPlayer = GameUtil.Player1.obs;
  RxInt gameResult = GameUtil.NO_WINNER_YET.obs;
  RxBool isAiPlaying = false.obs;
  GameAI ai = GameAI();

  reinitialize() {
    board.clear();
    board.addAll(List.generate(9, (index) => 0));
    gameResult.value = GameUtil.NO_WINNER_YET;
    currentPlayer.value = GameUtil.Player1;
    round.value = 0;
    update();

  }

  Future<void> move(int idx) async {
    board[idx] = currentPlayer.value;
    round.value++;
    checkGameWinner();
    togglePlayer();
    if (gameResult.value == GameUtil.NO_WINNER_YET) {
      isAiPlaying.value = true;
      await Future.delayed(const Duration(milliseconds: 1800));
      final _aiMove = await Future(
        () => ai.play(
          board,
          currentPlayer.value,
        ),
      );
      board[_aiMove] = currentPlayer.value;
      isAiPlaying.value = false;
      checkGameWinner();
      togglePlayer();
    }
  }

  bool isEnable(int idx) => board[idx] == GameUtil.EMPTY;

  int getDataAt(int idx) => board[idx];

  void togglePlayer() {
    currentPlayer.value = GameUtil.togglePlayer(currentPlayer.value);
  }

  void checkGameWinner() {
    gameResult.value = GameUtil.checkIfWinnerFound(board);
    gameResultStatus();
  }

  gameResultStatus() {
    final _gameResult = gameResult.value;
    if (_gameResult != GameUtil.NO_WINNER_YET) {
      if (_gameResult == GameUtil.Player1) {
        return Get.defaultDialog(
          backgroundColor: Get.find<HomePageController>().isDarkMode.value
              ? Colors.black
              : Colors.white,
          title: constant()
              .winString[Random.secure().nextInt(constant().winString.length)],
          titleStyle: GoogleFonts.ropaSans(
            color: Get.find<HomePageController>().isDarkMode.value
                ? Colors.white
                : Colors.black,
            fontSize:SizeConfig.screenHeight*0.025,
          ),
          content:
              constant().winEmoji[Random().nextInt(constant().winEmoji.length)],
          onWillPop: () {
            player1Win.value++;
            reinitialize();
            Get.back();
            return Future.value(true);
          },
          actions: [
            ElevatedButton(
              child: Text("Play Again"),
              onPressed: () {
                player1Win.value++;
                reinitialize();
                Get.back();
              },
            ),
          ],
        );
      } else if (_gameResult == GameUtil.Player2) {
        return Get.defaultDialog(
          backgroundColor: Get.find<HomePageController>().isDarkMode.value
              ? Colors.black
              : Colors.white,
          title: constant().loseString[
              Random.secure().nextInt(constant().loseString.length)],
          titleStyle: GoogleFonts.ropaSans(
            color: Get.find<HomePageController>().isDarkMode.value
                ? Colors.white
                : Colors.black,
            fontSize:SizeConfig.screenHeight*0.025,
          ),
          content: constant()
              .loseEmoji[Random().nextInt(constant().loseEmoji.length)],
          onWillPop: () {
            player2Win.value++;
            reinitialize();
            Get.back();
            return Future.value(true);
          },
          actions: [
            ElevatedButton(
              child: Text("Play Again"),
              onPressed: () {
                player2Win.value++;
                reinitialize();
                Get.back();
              },
            ),
          ],
        );
      } else if (_gameResult == GameUtil.DRAW) {
        return Get.defaultDialog(
          backgroundColor: Get.find<HomePageController>().isDarkMode.value
              ? Colors.black
              : Colors.white,
          title: constant().drawString[
              Random.secure().nextInt(constant().drawString.length)],
          titleStyle: GoogleFonts.ropaSans(
            color: Get.find<HomePageController>().isDarkMode.value
                ? Colors.white
                : Colors.black,
            fontSize:SizeConfig.screenHeight*0.025,
          ),
          content: constant()
              .drawEmoji[Random().nextInt(constant().drawEmoji.length)],
          onWillPop: () {
            draw.value++;
            reinitialize();
            Get.back();
            return Future.value(true);
          },
          actions: [
            ElevatedButton(
              child: Text("Play Again"),
              onPressed: () {
                draw.value++;
                reinitialize();
                Get.back();
              },
            ),
          ],
        );
      }
    }
    return null;
  }
}

class GameUtil {
  static const Player1 = 1;
  static const Player2 = -1;

  static const DRAW = 2;
  static const NO_WINNER_YET = 0;
  static const EMPTY = 0;

  static const WIN_CONDITIONS_LIST = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];

  static int togglePlayer(int currentPlayer) {
    return -1 * currentPlayer;
  }

  static bool isValidMove(List<int> board, int idx) => board[idx] == EMPTY;

  static int checkIfWinnerFound(List<int> board) {
    for (var list in WIN_CONDITIONS_LIST) {
      if (board[list[0]] != EMPTY &&
          board[list[0]] == board[list[1]] &&
          board[list[0]] == board[list[2]]) {
        return board[list[0]];
      }
    }
    if (isBoardFull(board)) {
      return DRAW;
    }
    return NO_WINNER_YET;
  }

  static bool isBoardFull(List<int> board) {
    for (var value in board) {
      if (value == EMPTY) return false;
    }
    return true;
  }
}

class GameAI {
  static const WIN_SCORE = 100;
  static const LOSE_SCORE = -100;
  static const DRAW_SCORE = 0;

  Move bestMove = Move(score: -10000, move: -1);

  int play(List<int> board, int currentPlayer) {
    return getAIMove(board, currentPlayer).move;
  }

  Move getAIMove(List<int> board, int currentPlayer) {
    
      List<int> _newBoard;

    for (int currentMove = 0; currentMove < board.length; currentMove++) {
      if (!GameUtil.isValidMove(board, currentMove)) continue;
      _newBoard = List.from(board);
      _newBoard[currentMove] = currentPlayer;
      int _newScore = -getBestScore(
        _newBoard,
        GameUtil.togglePlayer(currentPlayer),
      );
      if (Get.find<LevelPageController>().level.value == 1) {
        if (Get.find<GameController>().round.value == 1) {
          if (_newScore > bestMove.score) {
            bestMove.score = _newScore - 1000;
            bestMove.move = currentMove;
          }
        }
      }
      if (Get.find<LevelPageController>().level.value == 2) {
        if (Get.find<GameController>().round.value == 2) {
          if (_newScore > bestMove.score) {
            bestMove.score = _newScore - 1000;
            bestMove.move = currentMove;
          }
        }
      }  
      else
        if (_newScore > bestMove.score) {
          bestMove.score = _newScore;
          bestMove.move = currentMove;
        }
      }
  

    return bestMove;
  }

  int getBestScore(List<int> board, int currentPlayer) {
    final _winner = GameUtil.checkIfWinnerFound(board);
    if (_winner == currentPlayer) {
      return WIN_SCORE;
    } else if (_winner == GameUtil.togglePlayer(currentPlayer)) {
      return LOSE_SCORE;
    } else if (_winner == GameUtil.DRAW) {
      return DRAW_SCORE;
    }
    return getAIMove(board, currentPlayer).score;
  }
}

class Move {
  int score;
  int move;

  Move({
    required this.score,
    required this.move,
  });
}
