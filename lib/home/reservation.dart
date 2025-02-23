import 'package:flutter/material.dart';

class reservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '예약하기',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.black54),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '서울 강남구 테헤란로 427 위워크타워 1동 1호',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView(
                children: [
                  _buildServiceItem(Icons.cleaning_services, '가사도우미', '2시간 29,200원부터', Colors.lightBlueAccent),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.local_shipping, '이사', '최대 3개 무료 견적 비교', Colors.blue),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.cleaning_services, '이사청소', '평당 10,900원부터', Colors.purple),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.air, '세탁기/침대/에어컨 청소', '에어컨, 세탁기, 매트리스', Colors.teal),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.business, '사무실 청소', '학원/매장/모든 사업장 즉시 예약!', Colors.blue),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.home, '인테리어', '', Colors.redAccent),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.home, '전기/수도/가스', '', Colors.grey),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.home, '전문/특수 청소', '', Colors.grey),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.home, '간병/산후/생활 돌봄', '', Colors.grey),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.home, '운송/운반/보관', '', Colors.grey),
                  SizedBox(height: 20,),
                  _buildServiceItem(Icons.home, '사무실/건물 관리', '', Colors.grey),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String title, String subtitle, Color color) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: subtitle.isNotEmpty
          ? Text(
        subtitle,
        style: TextStyle(fontSize: 16),
      )
          : null,
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
      onTap: () {},
    );
  }
}
