import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheeba/Util/setting.dart';
import 'package:sheeba/views/app_components/components.dart';
import 'package:sheeba/views/app_components/custom_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Setting().sheebaYellow,
      appBar: AppBar(
        backgroundColor: Setting().sheebaYellow,
        title: AppBarText(text: 'ログイン')
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              // メールアドレス
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextField(
                  controller: null,
                  decoration: InputDecoration(
                      hintText: 'メールアドレス'
                  ),
                  onChanged: (text) {

                  },
                ),
              ),
              // パスワード
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextFormField(
                  obscureText: !_isShowPassword,
                  decoration: InputDecoration(
                    labelText: 'パスワード',
                    suffixIcon: IconButton(
                      icon: Icon(_isShowPassword ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isShowPassword = !_isShowPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: CustomButton(text: '次へ'),
              ),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}