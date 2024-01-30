import 'package:flutter/material.dart';
import 'package:flutter_rsp_game/game/enum.dart';
import 'package:flutter_rsp_game/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;
  const CpuInput({super.key, required this.isDone, required this.cpuInput});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Placeholder();
    }

    return const Center(
      child: InputCard(
        child: SizedBox(
          width: 64,
          height: 64,
          child: Center(
            child: Text(
              '?',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
