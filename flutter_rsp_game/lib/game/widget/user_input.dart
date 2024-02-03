import 'package:flutter/material.dart';
import 'package:flutter_rsp_game/game/enum.dart';
import 'package:flutter_rsp_game/game/widget/input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput; // 사용자가 입력한 값을 전달하기 위해서
  final Function(InputType) callback;
  const UserInput(
      {super.key,
      this.userInput,
      required this.isDone,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Expanded(child: InputCard(child: Image.asset(userInput!.path))),
          const Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
        .map(
          (type) => InputCard(
            child: Image.asset(type.path),
            callback: () => callback.call(type),
          ),
        )
        .toList();
  }
}
