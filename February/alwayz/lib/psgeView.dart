import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const pageView(),
    );
  }
}

class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                    tag: "damgom1",
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset("assets/doll2.jpg",
                          height: 400, fit: BoxFit.cover),
                    )),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 8, // 상태바 아래에 배치
                  left: 8,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context); // 이전 화면으로 돌아가기
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    mini: true, // 버튼 크기 작게
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("15,000원",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const Text("쿠폰가 10,000원",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 229, 107, 98))),
                  const Text("[국내산] 농담곰 25cm 가방 인형",
                      style: TextStyle(fontSize: 17)),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text("배송비",
                          style: TextStyle(
                              color: Color.fromARGB(255, 195, 195, 195),
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Text("모든 상품 무료 배송",
                          style: TextStyle(
                              color: Color.fromARGB(255, 186, 21, 10),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text("배송정보",
                          style: TextStyle(
                              color: Color.fromARGB(255, 195, 195, 195),
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Text("배송 4일 소요 CJ대한통운",
                          style: TextStyle(
                              color: Color.fromARGB(255, 195, 195, 195),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.5, //선 두께
                  ),
                  const SizedBox(height: 10),
                  const Text("열린 팀구매 참여하기 (2인팀)",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 30),

                  //바텀바바
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        children: [
                          Icon(Icons.favorite_outline, color: Colors.grey),
                          Text("찜하기"),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 226, 213, 96),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: const Size(160, 60), //가로, 세로 크기
                          ),
                          child: const Text("   15,000원\n혼자 구매하기",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 217, 50, 38),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: const Size(160, 60),
                          ),
                          child: const Text("10,000원 \n 구매하기",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
