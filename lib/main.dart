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
                preferredSize: Size.fromHeight(30.0),
                child: AppBar(
                  title: Image.asset("assets/images/logo.png"),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.shop))
                  ],
                ))));
  }
}
