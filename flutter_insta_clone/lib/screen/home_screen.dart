import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            List.generate(10, (index) => UserStory(userName: 'User $index')),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;

  const UserStory({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text('$userName')
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  FeedData(
      {required this.userName, required this.likeCount, required this.content});
}

final feedDataList = [
  FeedData(userName: 'User1', likeCount: 50, content: '오늘 청소를 했다.'),
  FeedData(userName: 'User2', likeCount: 24, content: '걸레로 닦았다.'),
  FeedData(userName: 'User3', likeCount: 55, content: '빨래를 널었다.'),
  FeedData(userName: 'User4', likeCount: 90, content: '아침은 떡국을 먹었다.'),
  FeedData(userName: 'User5', likeCount: 5, content: '점심은 먹지 않았다.'),
  FeedData(userName: 'User6', likeCount: 36, content: '저녁은 뭐 먹지?'),
  FeedData(userName: 'User7', likeCount: 77, content: '배가 고파서 배에서 소리가 난다.'),
  FeedData(userName: 'User8', likeCount: 29, content: '포켓몬스터 게임을 하다.'),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      /* 
          스크롤이 2개일 경우 하나의 스크롤을 고정처리 한다.
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),

      */
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (context, index) => FeedItem(feedData: feedDataList[index]),
    );
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;
  const FeedItem({super.key, required this.feedData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(feedData.userName),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 280,
          color: Colors.indigo.shade300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outline)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.chat_bubble)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.paperplane)),
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.bookmark)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            '좋아요 ${feedData.likeCount}개',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: feedData.userName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: feedData.content),
              ],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
