import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoenymble/SizeConfig.dart';
import 'package:tictactoenymble/constants/constants.dart';
import 'package:tictactoenymble/controller/GameController.dart';
import 'package:tictactoenymble/controller/HomePageController.dart';
import 'package:tictactoenymble/widgets/CrossSelectionBox.dart';
import 'package:tictactoenymble/widgets/TickSelectionBox.dart';

class BoardWidget extends GetWidget<GameController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
                  init: HomePageController(),
                  builder: (controller) {
    return Obx((() =>  Container(
      height: SizeConfig.screenHeight * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.06),
        border: Border.all(
            color: Get.find<HomePageController>().isDarkMode.value
                ? constant().greenColor
                : constant().redColor,
            width: 3),
      ),
      child: Stack(
        fit: StackFit.loose,
        children: [
          _listenBoardData(),
          _listenAiPlaying(),
        ],
      ),
    )
    ));
                  
                  });         
  }

  Widget _listenAiPlaying() {
    return Obx(() => IgnorePointer(
          ignoring: !controller.isAiPlaying.value,
          child: Container(
            color: Colors.transparent,
          ),
        ));
  }



 

  Widget _listenBoardData() {
    return Obx(
      () => GridView.count(
        padding: const EdgeInsets.only(bottom: 5.0),
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          controller.board.length,
          (index) => _Field(
            index: index,
            onTap: (idx) {
              controller.move(idx);
            },
            isEnable: controller.isEnable(index),
            playerId: controller.getDataAt(index),
          ),
        ),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  final int index;
  final bool isEnable;
  final ValueChanged<int> onTap;
  final int playerId;
  const _Field({
    Key? key,
    required this.index,
    required this.isEnable,
    required this.onTap,
    required this.playerId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnable ? () => onTap(index) : null,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: _getBorder(index + 1),
        ),
        child: Center(child: _getPlayerWidget(playerId)),
      ),
    );
  }

  Widget? _getPlayerWidget(int playerId) {
    switch (playerId) {
      case GameUtil.Player1:
        return Get.find<HomePageController>().Player1Sign;
      case GameUtil.Player2:
        return Get.find<HomePageController>().Player2Sign;
      default:
        return Container();
    }
      
  }

  Border _getBorder(int index) {
    switch (index) {
      case 1:
        return Border(
            right: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ));
      case 2:
        return Border(
            right: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ));
      case 3:
        return Border(
            bottom: BorderSide(
          color: Get.find<HomePageController>().isDarkMode.value
              ? constant().greenColor
              : constant().redColor,
          width: 3,
          style: BorderStyle.solid,
        ));
      case 4:
        return Border(
            right: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ));
      case 5:
        return Border(
            right: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Get.find<HomePageController>().isDarkMode.value
                  ? constant().greenColor
                  : constant().redColor,
              width: 3,
              style: BorderStyle.solid,
            ));
      case 6:
        return Border(
          bottom: BorderSide(
            color: Get.find<HomePageController>().isDarkMode.value
                ? constant().greenColor
                : constant().redColor,
            width: 3,
            style: BorderStyle.solid,
          ),
        );
      case 7:
        return Border(
          right: BorderSide(
            color: Get.find<HomePageController>().isDarkMode.value
                ? constant().greenColor
                : constant().redColor,
            width: 3,
            style: BorderStyle.solid,
          ),
        );
      case 8:
        return Border(
          right: BorderSide(
            color: Get.find<HomePageController>().isDarkMode.value
                ? constant().greenColor
                : constant().redColor,
            width: 3,
            style: BorderStyle.solid,
          ),
        );
      case 9:
        return Border();
      default:
        throw ArgumentError('Unknown index : $index');
    }
  }
}


