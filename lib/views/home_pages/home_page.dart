import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sheeba/Util/setting.dart';
import 'package:sheeba/views/home_pages/app_bar_pages/notification_list_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/money_transfer_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/qr_code_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/ranking_page.dart';
import 'package:sheeba/views/home_pages/menu_bar_pages/store_get_point_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/cleartitle.png',
          width: 150,
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationListPage(),
              ),
            );
          },
              icon: Icon(Icons.notifications)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // カードView
            CardView(),
            MenuButtonsView(),
          ],
        ),
      ),
    );
  }
}

// カードView
class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Setting().sheebaYellow,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                )
              ],
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          const Column(
            children: [
              // 獲得ポイント
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  '獲得ポイント',
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80.0),
                      child: Text(
                        '98',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35,
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'pt',
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ),
                    // リロードボタン
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.replay, color: Colors.black,)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// メニューボタン
class MenuButtonsView extends StatelessWidget {
  final double iconSize = 35;
  final double textSize = 11;
  final double padding = 12;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                color: Setting().sheebaDarkGreen,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // QRコード
                Padding(
                  padding: EdgeInsets.only(left: padding, right: padding),
                  child: Column(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRCodePage(),
                          ),
                        );
                      }, icon: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                        size: iconSize,
                      )),
                      Text('QRコード', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: textSize,
                      ),),
                    ],
                  ),
                ),
                // 送る
                Padding(
                  padding: EdgeInsets.only(left: padding, right: padding),
                  child: Column(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoneyTransferPage(),
                          ),
                        );
                      }, icon: Icon(
                        Icons.currency_yen,
                        color: Colors.white,
                        size: iconSize,
                      )),
                      Text('送る', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: textSize,
                      ),),
                    ],
                  ),
                ),
                // ランキング
                Padding(
                  padding: EdgeInsets.only(left: padding, right: padding),
                  child: Column(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RankingPage(),
                          ),
                        );
                      }, icon: Icon(
                        Icons.emoji_events_outlined,
                        color: Colors.white,
                        size: iconSize,
                      )),
                      Text('ランキング', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: textSize,
                      ),),
                    ],
                  ),
                ),
                // 本日の獲得
                Padding(
                  padding: EdgeInsets.only(left: padding, right: padding),
                  child: Column(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoreGetPointPage(),
                          ),
                        );
                      }, icon: Icon(
                        Icons.store_outlined,
                        color: Colors.white,
                        size: iconSize,
                      )),
                      Text('本日の獲得', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: textSize,
                      ),),
                    ],
                  ),
                )
              ],
            )
          ]
      ),
    );
  }
}
