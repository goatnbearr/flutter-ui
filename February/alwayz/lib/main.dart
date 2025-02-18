import 'package:ex02/suggestion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
            //탭바
            bottom: const TabBar(tabs: [
              Tab(text: "이벤트"),
              Tab(text: "추천"),
              Tab(text: "식품"),
              Tab(text: "생활"),
              Tab(text: "가전"),
              Tab(text: "주방"),
            ]),
            backgroundColor: Colors.white,
            title: Row(
              children: [
                const Text(
                  //앱바
                  "DAMGOM",
                  style: TextStyle(
                      color: Color.fromARGB(255, 107, 18, 12),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "검색하기",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.grey[100],

                        //내부 여백을 줄여서 TextField 높이 줄이기
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        prefixIcon: const Icon(Icons.search)),
                  ),
                ),
              ],
            )),
        body: TabBarView(children: [
          Container(color: Colors.red),
          Container(color: Colors.white, child: const Suggestion()),
          Container(),
          Container(),
          Container(),
          Container()
        ]),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed, //간격 동일하게
            backgroundColor: Colors.white,
            selectedItemColor:
                const Color.fromARGB(255, 107, 18, 12), //선택된 아이템 색상상
            unselectedItemColor: Colors.grey, //선택되지 않은 아이템 색상
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library), label: "비디오"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "카테고리"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "관심상품"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "내 정보"),
            ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 129, 45, 41),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Icon(Icons.add, color: Colors.white, size: 30)),
      ),
    );
  }
}
