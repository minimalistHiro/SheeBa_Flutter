import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheeba/views/app_components/components.dart';

class RankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(text: 'ランキング'),
      ),
      body: Center(child: Text('RankingPage')),
    );
  }
}