import 'package:flutter/material.dart';
import 'package:tiktok_ui/bottom/home/posts/mypost1.dart';
import 'package:tiktok_ui/bottom/home/posts/mypost2.dart';
import 'package:tiktok_ui/bottom/home/posts/mypost3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: const [
            MyPost1(),
            MyPost2(),
            MyPost3(),
          ]),
    );
  }
}
