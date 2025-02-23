import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  List<String> services = [
    "가사도우미",
    "사무실 청소",
    "이사",
    "이사청소",
    "인테리어, 설치/수리, 세차/정리/방역",
    "가전/침대 청소",
    "펫시팅"
  ];

  List<String> backgrounds = [
    "assets/images/cleaning1.jpg",
    "assets/images/office_cleaning.jpg",
    "assets/images/moving.jpg",
    "assets/images/deep_cleaning.jpg",
    "assets/images/interior.jpg",
    "assets/images/appliance_cleaning.jpg",
    "assets/images/pet_sitting.jpg"
  ];

  List<String> tabImages = [
    "", // 방/거실은 기존 사진 유지
    "assets/images/ex1.jpg", // 주방
    "assets/images/ex2.jpg", // 욕실
    "assets/images/ex3.jpg", // 기타사항
  ];

  List<String> tabTexts = [
    "서비스의 기본 사진입니다.", // 방/거실
    "주방 청소 관련 서비스입니다.", // 주방
    "욕실 청소 관련 서비스입니다.", // 욕실
    "기타 사항에 대한 서비스입니다.", // 기타사항
  ];

  int selectedIndex = 0; // 선택된 서비스 버튼 인덱스
  int selectedTab = 0; // 선택된 탭 인덱스 (기본: 방/거실)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          '서비스 상세정보',
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 서비스 선택 버튼
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(services.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; // 선택된 인덱스를 저장
                      selectedTab = 0; // 서비스 변경 시 탭을 초기화 (방/거실로)
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      color: selectedIndex == index ? Colors.blue : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      services[index],
                      style: TextStyle(
                        color: selectedIndex == index ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),

            // 서비스 범위 탭
            const Text(
              "서비스 범위",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ["방/거실", "주방", "욕실", "기타사항"].asMap().entries.map((entry) {
                int index = entry.key;
                String tab = entry.value;
                return TextButton(
                  onPressed: () {
                    setState(() {
                      selectedTab = index; // 선택된 탭 변경
                    });
                  },
                  child: Text(
                    tab,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: selectedTab == index ? FontWeight.bold : FontWeight.normal,
                      color: selectedTab == index ? Colors.blue : Colors.black,
                    ),
                  ),
                );
              }).toList(),
            ),

            // 선택된 서비스 및 탭에 맞는 배경 이미지
            const SizedBox(height: 20),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  tabImages[selectedTab].isNotEmpty
                      ? tabImages[selectedTab] // 주방, 욕실, 기타사항은 새로운 사진 적용
                      : backgrounds[selectedIndex], // 방/거실은 기존 서비스 사진 유지
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),

            // 설명 텍스트 변경
            const SizedBox(height: 10),
            Text(
              tabTexts[selectedTab], // 선택된 탭에 맞는 텍스트 표시
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
