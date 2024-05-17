import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheeba/views/account_pages/update_username_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/money_transfer_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/qr_code_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/store_get_point_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: CircleBorder(),
        toolbarHeight: 200,
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