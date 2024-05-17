import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お知らせ'),
      ),
      body: Center(child: Text('NotificationListPage')),
    );
  }
}