import 'dart:io';

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
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                        labelText: '트렌비X삼성전자 최대 20%쿠폰!',
                        suffixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.search)))),
              ))),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Mytabbar(),
          Image.asset("assets/images/image0.png"),
          Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image1.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("여성")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image2.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("남성")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image3.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("키즈")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image4.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("리세일")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image5.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("아울렛")
                ]),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image6.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("하이엔드")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image7.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("인기지갑")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image8.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("스니커즈")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image9.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("세일")
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset(
                    "assets/images/image10.png",
                    width: 80,
                    height: 80,
                  ),
                  Text("럭셔리워치")
                ]),
              )
            ])
          ]),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.navigation,
            color: Colors.grey,
          )),
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

class Mytabbar extends StatefulWidget {
  const Mytabbar({super.key});

  @override
  State<Mytabbar> createState() => _MytabbarState();
}

class _MytabbarState extends State<Mytabbar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: _tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.black,
        tabs: [
          Tab(text: '홈'),
          Tab(text: '기획전'),
          Tab(text: '랭킹'),
          Tab(text: '브랜드'),
          Tab(text: 'IT:EM'),
          Tab(text: '매거진')
        ]);
  }
}
