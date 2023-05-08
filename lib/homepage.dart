import 'package:flutter/material.dart';
import 'package:tiktok_ui/bottom/home/screens/home_screen.dart';
import 'package:tiktok_ui/bottom/inbox/inbox_screen.dart';
import 'package:tiktok_ui/profile/screens/profile_screens.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _navigationBar(int index) {
    setState(() {});
    _selectedIndex = index;
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const Center(child: Text('search')),
    const Center(child: Text('Plus')),
    const InboxScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBar,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_rounded,
                  color: Colors.white,
                  size: 50,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ]),
    );
  }
}
