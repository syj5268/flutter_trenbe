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
        home: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            title: Image.asset("assets/images/logo.png", width: 100),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined),
                  color: Colors.black),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shop_outlined),
                  color: Colors.black),
              SizedBox(width: 10)
            ],
          )),
      body: Text('hello'),
      bottomNavigationBar: buttonchange(),
    ));
  }
}

class buttonchange extends StatefulWidget {
  const buttonchange({super.key});

  @override
  State<buttonchange> createState() => _buttonchangeState();
}

class _buttonchangeState extends State<buttonchange> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.purple,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.category), label: '카테고리'),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: '이벤트'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
        BottomNavigationBarItem(icon: Icon(Icons.shop_two), label: '뉴 시즌'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이'),
      ],
    );
  }
}
