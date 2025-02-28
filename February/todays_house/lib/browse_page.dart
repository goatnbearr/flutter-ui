import 'package:flutter/material.dart';
import 'package:todays_house/challenge_listview.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              const Icon(Icons.menu),
              const SizedBox(width: 10),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    labelText: "검색하기",
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    prefixIcon: const Icon(Icons.search)),
              )),
              const SizedBox(width: 10),
              const Icon(Icons.notifications_outlined),
              const SizedBox(width: 10),
              const Icon(Icons.favorite_outline),
              const SizedBox(width: 10),
              const Icon(Icons.shopping_cart_outlined)
            ],
          ),
          bottom: const TabBar(
              labelColor: Colors.black, //선택한 글자색
              indicatorColor: Colors.black, //밑줄
              tabs: [
                Tab(text: "#채널"),
                Tab(text: "집들이"),
                Tab(text: "집사진"),
                Tab(text: "살림수납"),
                Tab(text: "반려동물")
              ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "챌린지 채널",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Spacer(), //남은 공간 전부 차지
                        Text("전체보기")
                      ],
                    ),
                  ),
                  ChallengeListview(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("지금 뜨는 채널",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Text("#침실스타일링",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined, size: 15)
                          ],
                        ),
                        const Text("이렇게 예쁜 침실 봤어요? 로망 가득 침실 스타일링"),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/house3.jpeg",
                                  width: 98, height: 130, fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/house4.jpeg",
                                  width: 99, height: 130, fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/house5.jpeg",
                                  width: 99, height: 130, fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/house1.jpeg",
                                  width: 98, height: 130, fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Divider(),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text("#내돈내산",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined, size: 15)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/chair.jpeg",
                                  width: 98, height: 130, fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/book.jpeg",
                                  width: 99, height: 130, fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/table.jpeg",
                                  width: 99, height: 130, fit: BoxFit.cover),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/house7.jpeg",
                                  width: 98, height: 130, fit: BoxFit.cover),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(),
          Container(),
          Container(),
          Container()
        ]),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "홈"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.speaker_notes_outlined), label: "둘러보기"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: "쇼핑"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sentiment_satisfied), label: "생활"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "마이페이지"),
            ]),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 105, 215, 240),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {},
            child: const Icon(Icons.library_add_outlined, color: Colors.white)),
      ),
    );
  }
}
