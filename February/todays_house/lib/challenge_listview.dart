import 'package:flutter/material.dart';

class ChallengeListview extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "image": "assets/house1.jpeg",
      "title": "우리집5문5답",
      "description": "내가 좋아하는 ㅇㅇ은?",
      "points": "5,000P",
      "participants": "1357명 참여",
      "deadline": "오늘마감",
    },
    {
      "image": "assets/house2.jpeg",
      "title": "우리집가구빙고",
      "description": "도전!우리 집 잘산 가구로 완성하는 빙고!",
      "points": "5,000P",
      "participants": "2000명 참여",
      "deadline": "오늘마감",
    },
  ];
  final List<Map<String, String>> secondList = [
    {
      "image": "assets/chair.jpeg",
      "title": "주방템 자랑하기",
      "description": "내 주방 필수템 자랑하고 포인트 받자!",
      "points": "3,000P",
      "participants": "500명 참여",
      "deadline": "내일 마감",
    },
    {
      "image": "assets/house4.jpeg",
      "title": "우리집 정리 꿀팁",
      "description": "내가 실천하는 정리정돈 팁을 공유해보자!",
      "points": "4,000P",
      "participants": "850명 참여",
      "deadline": "2일 후 마감",
    },
  ];

  ChallengeListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90, //카드 높이
          child: ListView.builder(
              scrollDirection: Axis.horizontal, //가로 스크롤롤
              itemCount: items.length,
              // padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return ChallengeCard(data: items[index]);
              }),
        ),
        SizedBox(
          height: 90, //카드 높이
          child: ListView.builder(
              scrollDirection: Axis.horizontal, //가로 스크롤롤
              // itemCount: secondList.length,
              // padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return ChallengeCard(data: secondList[index]);
              }),
        ),
      ],
    );
  }
}

class ChallengeCard extends StatelessWidget {
  final Map<String, String> data;
  const ChallengeCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Container(
        width: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          // boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5)],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(data["image"]!,
                  width: 70, height: 70, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data["title"]!,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(data["description"]!,
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    overflow: TextOverflow.ellipsis),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      decoration: BoxDecoration(
                        //테두리 색
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Text(data["points"]!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0))),
                    ),
                    const SizedBox(width: 6),
                    Text(data["participants"]!,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 6),
                    Text(data["deadline"]!,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
