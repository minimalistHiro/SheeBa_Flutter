import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheeba/Util/setting.dart';
import 'package:sheeba/views/account_pages/account_page.dart';
import 'package:sheeba/views/home_pages/home_page.dart';
import 'package:sheeba/views/qr_scan_pages/qr_scan_page.dart';

class BottomTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _currentIndex = 0;
  final _pageWidgets = [
    HomePage(),
    QRScanPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: 'スキャン'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'アカウント'),
        ],
        currentIndex: _currentIndex,
        fixedColor: Setting().sheebaDarkGreen,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index);
}