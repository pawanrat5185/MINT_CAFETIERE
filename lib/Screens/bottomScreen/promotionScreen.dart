import 'package:flutter/material.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  _PromotionScreenState createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Image.network(
                        "https://images.pexels.com/photos/851555/pexels-photo-851555.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    SizedBox(height: 15),
                    Text("คาปูชิโน่ร้อน ลดเหลือราคา 45 บาท จากราคาปกติ 55 บาท"),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Image.network(
                        "https://images.pexels.com/photos/1233528/pexels-photo-1233528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    SizedBox(height: 15),
                    Text(
                        "เอสเปรสโซ่ร้อน ลดเหลือราคา 40 บาท จากราคาปกติ 50 บาท"),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Image.network(
                        "https://images.pexels.com/photos/6207307/pexels-photo-6207307.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=650&w=940"),
                    SizedBox(height: 15),
                    Text("อเมริกาโน่ร้อน ซื้อ 1 แก้ว แถมฟรี 1 แก้ว"),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
