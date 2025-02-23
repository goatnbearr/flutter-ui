import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<String> imgList = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
  ];

  int _currentIndex = 0; // 현재 선택된 이미지 인덱스

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(height: 50),

            // Carousel Slider 부분
            CarouselSlider(
              options: CarouselOptions(
                height: 500, // 슬라이더 높이
                enlargeCenterPage: true, // 가운데 이미지 크게 보이기
                viewportFraction: 0.8, // 슬라이드 간격 조절
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index; // 슬라이드가 바뀔 때 현재 인덱스 업데이트
                  });
                },
              ),
              items: imgList
                  .map((item) => Container(
                child: Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.contain,
                    width: 1000,
                  ),
                ),
              ))
                  .toList(),
            ),

            const SizedBox(
              height: 50,
            ),

            // 인디케이터 부분
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => setState(() {
                    _currentIndex = entry.key; // 해당 인디케이터 클릭 시 슬라이드 변경
                  }),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? Colors.blueAccent // 현재 인덱스일 경우 채워진 동그라미
                          : Colors.grey, // 그렇지 않은 경우 빈 동그라미
                    ),
                  ),
                );
              }).toList(),
            ),

            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: TextButton(
                  child: Text("시작하기"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => home())
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}