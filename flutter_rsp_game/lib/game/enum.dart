const assetPath = 'assets/images';

// 가위, 바위, 보 선택 데이터
enum InputType {
  rock,
  scissors,
  paper;

  //이미기 경로
  String get path => '$assetPath/$name.png';
}
