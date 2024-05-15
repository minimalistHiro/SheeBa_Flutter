import 'package:flutter/material.dart';
import 'package:sheeba/views/content_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase初期化処理
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SheeBa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ContentView(),
    );
  }
}
