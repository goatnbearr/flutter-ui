import 'package:ex02/psgeView.dart';
import 'package:flutter/material.dart';

class Suggestion extends StatefulWidget {
  const Suggestion({super.key});

  @override
  State<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 130,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/담곰카페.jpg", fit: BoxFit.cover))),
            const SizedBox(height: 5),

            //아이콘
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.alarm_on,
                        size: 35, color: Color.fromARGB(255, 101, 55, 51)),
                    Text("타임특가", style: TextStyle(fontSize: 13))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.sports_esports,
                        size: 40, color: Color.fromARGB(255, 101, 55, 51)),
                    Text("담곰게임", style: TextStyle(fontSize: 13))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.event_available,
                        size: 40, color: Color.fromARGB(255, 101, 55, 51)),
                    Text("출석체크", style: TextStyle(fontSize: 13))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.pets,
                        size: 35, color: Color.fromARGB(255, 101, 55, 51)),
                    SizedBox(height: 4),
                    Text("담팜", style: TextStyle(fontSize: 13))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.run_circle_sharp,
                        size: 35, color: Color.fromARGB(255, 101, 55, 51)),
                    SizedBox(height: 4),
                    Text("폴워크", style: TextStyle(fontSize: 13))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.volunteer_activism_outlined,
                        size: 35, color: Color.fromARGB(255, 101, 55, 51)),
                    SizedBox(height: 4),
                    Text("복주머니", style: TextStyle(fontSize: 13))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),

            //이미지2
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/담곰카페2.png", fit: BoxFit.cover)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print("담곰인형1 클릭");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => const pageView()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, //텍스트 왼쪽 배치
                    children: [
                      Hero(
                        tag: "damgom1",
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/doll2.jpg",
                                width: 190, height: 190)),
                      ),
                      const Text("농담곰 25cm 가방 인형"),
                      const Text("15,000원",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/doll1.jpg",
                            width: 190, height: 190)),
                    const Text("농담곰 25cm 기본 인형"),
                    const Text("20,000원",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/doll3.jpg",
                            width: 190, height: 190)),
                    const Text("농담곰 25cm 쥐 인형"),
                    const Text("30,000원",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/doll5.jpg",
                            width: 190, height: 190)),
                    const Text("농담곰 25cm 팬더 인형"),
                    const Text("20,000원",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
