import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentView extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/cleartitle.png',
          width: 150,
        ),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.notifications)),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }

  // Future<void> CustomShowDialog(BuildContext context, Book book, BookListModel model) {
  //   return showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (_) {
  //       return AlertDialog(
  //         title: Text('削除の確認'),
  //         content: Text('「${book.title}」を削除しますか？'),
  //         actions: [
  //           TextButton(
  //             child: Text('Cancel'),
  //             onPressed: () => Navigator.pop(context),
  //           ),
  //           TextButton(
  //             child: Text('OK'),
  //             onPressed: () async {
  //               await model.deleteBook(book);
  //               Navigator.pop(context);
  //
  //               final snacBar = SnackBar(
  //                 backgroundColor: Colors.green,
  //                 content: Text('${book.title}を削除しました'),
  //               );
  //               model.fetchBookList();
  //               ScaffoldMessenger.of(context).showSnackBar(snacBar);
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}