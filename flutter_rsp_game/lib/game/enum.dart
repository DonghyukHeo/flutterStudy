const assetPath = 'assets/images';

// 가위, 바위, 보 선택 데이터
enum InputType {
  rock,
  scissors,
  paper;

  //이미기 경로
  String get path => '$assetPath/$name.png';
}

enum Result {
  playWin('Player 승리'),
  draw('무승부'),
  cpuWin('CPU 승리');

  const Result(this.displayString);

  final String displayString;
}
