import 'package:flutter/material.dart';
import 'package:app4/Screens/bottomScreen/indexScreen.dart';
import 'package:app4/Screens/bottomScreen/productScreen.dart';
import 'package:app4/theme/app_theme.dart';
import 'bottomScreen/contactScreen.dart';
import 'bottomScreen/promotionScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    IndexScreen(),
    ProductScreen(),
    PromotionScreen(),
    ContactScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soi 5 Marketplace'),
      ),
      body: SafeArea(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_work_outlined),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.home_work_outlined,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Products",
            icon: Icon(Icons.local_restaurant_outlined),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.local_restaurant_outlined,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "promotion",
            icon: Icon(Icons.star),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.star,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "contact us",
            icon: Icon(Icons.contact_mail),
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Icon(
                Icons.contact_mail,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
