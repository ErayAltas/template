// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/AppConstant.dart';
import 'package:template/views/chat_page.dart';
import 'package:template/views/history_page.dart';

import 'views/document_page.dart';
import 'views/home_page.dart';
import 'views/info_page.dart';

class SanalMusavir extends StatefulWidget {
  const SanalMusavir({Key? key}) : super(key: key);

  @override
  State<SanalMusavir> createState() => _SanalMusavirState();
}

class _SanalMusavirState extends State<SanalMusavir> {
  int _currentTab = 0;
  Widget _currentScreen = const HomePage();

  navigatePage(int num) {
    if (num == 0) {
      _currentScreen = const HomePage();
    }
    if (num == 1) {
      _currentScreen = const InfoPage();
    }
    if (num == 2) {
      _currentScreen = const DocumentPage();
    }
    if (num == 3) {
      _currentScreen = const HistoryPage();
    }
    if (num == 4) {
      _currentScreen = const ChatPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            navigatePage(4);
          });
        },
        backgroundColor: AppConstant.color2,
        child: const Icon(Icons.chat, size: 30, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeIndex: _currentTab,
        height: Get.height / 12,
        activeColor: Colors.white,
        inactiveColor: Colors.black,
        gapLocation: GapLocation.center,
        backgroundColor: AppConstant.color2,
        icons: const [Icons.home, Icons.info, Icons.send, Icons.history],
        iconSize: 30,
        onTap: (index) {
          setState(() {
            _currentTab = index;
            navigatePage(index);
          });
        },
      ),
    );
  }
}
