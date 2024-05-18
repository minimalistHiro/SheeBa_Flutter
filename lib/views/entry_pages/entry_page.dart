import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheeba/Util/setting.dart';
import 'package:sheeba/views/app_components/custom_button.dart';
import 'package:sheeba/views/entry_pages/login_pages/login_page.dart';
import 'package:sheeba/views/entry_pages/sign_up_pages/set_up_username_page.dart';

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Setting().sheebaYellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100, top: 100),
              child: Image.asset(
                'images/title.png',
                width: 250,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: CustomOutlinedButton(text: 'アカウントを作成する', nextPage: SetUpUsernamePage(),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: CustomButton(text: 'ログイン', nextPage: LoginPage(),),
            ),
          ],
        ),
      ),
    );
  }
}