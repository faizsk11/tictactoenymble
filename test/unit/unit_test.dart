import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/controller/GameController.dart';
import 'package:tictactoenymble/controller/LevelPageController.dart';

void main() {

    test("Check for AI Best move", () {
    // Arrange
    GameAI gameAI = GameAI();
     Get.put(LevelPageController());
    gameAI.getAIMove([0,0,0,0,0,0,0,0,0], -1).score=-10000;
    gameAI.getAIMove([0,0,0,0,0,0,0,0,0], -1).move=-1;
   
    // Act
    int result = gameAI.play([1,0,0,0,0,0,0,0,0], -1);
    // Assert
    expect(result, 4);
  });


  
  test("Win of Player 1", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.player1Win.value;
    // Assert
    expect(result, 0);
  });

  test("Win of Player 2", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.player2Win.value;
    // Assert
    expect(result, 0);
  });

  test("Draw", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.draw.value;
    // Assert
    expect(result, 0);
  });

  test("Round", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.round.value;
    // Assert
    expect(result, 0);
  });

  test("Board", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    List<int> result = gameController.board.value;
    // Assert
    expect(result, [0, 0, 0, 0, 0, 0, 0, 0, 0]);
  });

  test("Current Player", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.currentPlayer.value;
    // Assert
    expect(result, GameUtil.Player1);
  });

  test("Game Result", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.gameResult.value;
    // Assert
    expect(result, GameUtil.NO_WINNER_YET);
  });

  test("Is AI Playing", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    bool result = gameController.isAiPlaying.value;
    // Assert
    expect(result, false);
  });

  test("Is Enable", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    bool result = gameController.isEnable(0);
    // Assert
    expect(result, true);
  });

  test("Data At", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    int result = gameController.getDataAt(0);
    // Assert
    expect(result, 0);
  });

  test("Move", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    gameController.move(0);
    // Assert
    expect(gameController.board.value, [1, 0, 0, 0, 0, 0, 0, 0, 0]);
  });

  test("Toggle Player", () {
    // Arrange
    GameController gameController = GameController();
    // Act
    gameController.togglePlayer();
    // Assert
    expect(gameController.currentPlayer.value, GameUtil.Player2);
  });

  test("Is Valid Move", () {
    // Arrange
    GameUtil gameUtil = GameUtil();
    // Act
    bool result = GameUtil.isValidMove([0, 0, 0, 0, 0, 0, 0, 0, 0], 0);
    // Assert
    expect(result, true);
  });

  test("Is Valid Move", () {
    // Arrange
    GameUtil gameUtil = GameUtil();
    // Act
    bool result = GameUtil.isValidMove([0, 0, 0, 0, 0, 0, 0, 0, 0], 1);
    // Assert
    expect(result, false);
  });

  test("Check If Winner Found", () {
    // Arrange
    GameUtil gameUtil = GameUtil();
    // Act
    int result = GameUtil.checkIfWinnerFound([1, 1, 1, 0, 0, 0, 0, 0, 0]);
    // Assert
    expect(result, 1);
  });

  test("Check if board id full", () {
    // Arrange
    GameUtil gameUtil = GameUtil();
    // Act
    bool result = GameUtil.isBoardFull([0, 0, 0, 0, 0, 0, 0, 0, 0]);
    // Assert
    expect(result, false);
  });

  test("Check for AI Win Score", () {
    // Arrange
    GameAI gameAI = GameAI();
    // Act
    int result = GameAI.WIN_SCORE;
    // Assert
    expect(result, 100);
  });

  test("Check for AI Lose Score", () {
    // Arrange
    GameAI gameAI = GameAI();
    // Act
    int result = GameAI.LOSE_SCORE;
    // Assert
    expect(result, -100);
  });

  test("Check for AI Draw Score", () {
    // Arrange
    GameAI gameAI = GameAI();
    // Act
    int result = GameAI.DRAW_SCORE;
    // Assert
    expect(result, 0);
  });






  test("Check for AI move", () {
    // Arrange
    Move move = Move(move: 0, score: 0);
    // Act
    int result = move.move;
    // Assert
    expect(result, 0);
  });

  test("Check for AI score", () {
    // Arrange
    Move move = Move(move: 0, score: 0);
    // Act
    int result = move.score;
    // Assert
    expect(result, 0);
  });
}
