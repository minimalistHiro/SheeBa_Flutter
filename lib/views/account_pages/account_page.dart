import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sheeba/views/account_pages/update_username_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            // アイコン
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                        border: Border.all(width: 3),
                      ),
                    ),
                    Icon(Icons.person, size: 70,)
                  ]
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text('広樹',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('しばID：fdsfdsgwejojsiojdfaf52534151345safaso',
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text('設定',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 250,
      ),
      body: ListView(children: [
        _menuItem('ユーザー名を変更', Colors.black, context, UpdateUsernamePage()),
        _menuItem('公式サイト', Colors.black, context, null),
        _menuItem('プライバシーポリシー', Colors.black, context, null),
        _menuItem('ログアウト', Colors.red, context, null),
        _menuItem('退会する', Colors.red, context, null),
      ],),
    );
  }

  Widget _menuItem(String title, Color color, BuildContext context, Widget? widget) {
    return GestureDetector(
      child:Container(
          padding: EdgeInsets.only(left: 25.0, top: 20.0, bottom: 20.0),
          decoration: new BoxDecoration(
              border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
          ),
          child: Text(
            title,
            style: TextStyle(
                color: color,
                fontSize: 18.0
            ),
          ),
      ),
      onTap: () {
        if (widget != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        }
      },
    );
  }
}