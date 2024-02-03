import 'package:flutter/material.dart';
import 'package:flutter_rsp_game/game/enum.dart';
import 'package:flutter_rsp_game/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;
  const CpuInput({super.key, required this.isDone, required this.cpuInput});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 결과 화면 크기를 사용자 입력 화면과 동일하게 만들기 위해서 SizedBox.shrink()로 빈 공간을 만들어서 동일한 크기로 생성하게 한다.
        const Expanded(child: SizedBox.shrink()),
        InputCard(
          child: getCpuInput(),
        ),
        const Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }

    return const SizedBox(
      width: 64,
      height: 64,
      child: Center(
        child: Text(
          '?',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
