import 'package:flutter/material.dart';
import 'package:sheeba/views/entry_pages/entry_page.dart';

Future<void> main() async {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff8eff77)),
        useMaterial3: true,
      ),
      home: EntryPage(),
    );
  }
}
