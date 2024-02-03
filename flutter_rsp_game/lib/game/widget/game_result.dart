import 'package:flutter/material.dart';
import 'package:flutter_rsp_game/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callBack;

  const GameResult(
      {super.key, this.result, required this.isDone, required this.callBack});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
              onPressed: () => callBack.call(), child: const Text('다시 하기')),
        ],
      );
    }

    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택 해 주세요!',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
