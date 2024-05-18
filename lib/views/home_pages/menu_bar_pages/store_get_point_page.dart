import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheeba/views/app_components/components.dart';

class StoreGetPointPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(text: '本日の獲得ポイント一覧'),
      ),
      body: Center(child: Text('StoreGetPointPage')),
    );
  }
}