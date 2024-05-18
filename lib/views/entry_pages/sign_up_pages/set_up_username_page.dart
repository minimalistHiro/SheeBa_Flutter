import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sheeba/Util/setting.dart';
import 'package:sheeba/view_model/view_model.dart';
import 'package:sheeba/views/app_components/custom_button.dart';
import 'package:sheeba/views/app_components/custom_icon.dart';
import 'package:sheeba/views/entry_pages/sign_up_pages/set_up_email_page.dart';
import '../../app_components/components.dart';

class SetUpUsernamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ViewModel>(
      create: (_) => ViewModel(),
      child: Scaffold(
        backgroundColor: Setting().sheebaYellow,
        appBar: AppBar(
            backgroundColor: Setting().sheebaYellow,
            title: AppBarText(text: '新規アカウントを作成')),
        body: Center(
          child: Consumer<ViewModel>(builder: (context, model, child) {
            child:
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, top: 15),
                    child: Text('トップ画像（任意）'),
                  ),
                  // トップ画像
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: GestureDetector(
                      child: CustomIcon(imageFile: model.imageFile,),
                      onTap: () async {
                        await model.pickImage();
                      }
                    ),
                  ),
                  // ユーザー名
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          hintText: 'ユーザー名（他のユーザーに公開されます）'
                      ),
                      onChanged: (text) {

                      },
                    ),
                  ),
                  // 年代
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry<
                        Color>>[
                      DropdownMenuEntry(value: Colors.red, label: 'Red'),
                      DropdownMenuEntry(value: Colors.blue, label: 'Blue'),
                      DropdownMenuEntry(value: Colors.purple, label: 'Purple'),
                      DropdownMenuEntry(value: Colors.green, label: 'Green'),
                    ],
                      hintText: '年代を選択してください',
                      width: 300,
                    ),
                  ),
                  // 年代
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry<
                        Color>>[
                      DropdownMenuEntry(value: Colors.red, label: 'Red'),
                      DropdownMenuEntry(value: Colors.blue, label: 'Blue'),
                      DropdownMenuEntry(value: Colors.purple, label: 'Purple'),
                      DropdownMenuEntry(value: Colors.green, label: 'Green'),
                    ],
                      hintText: '住所を選択してください',
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CustomButton(
                      text: '次へ', nextPage: SetUpEmailPage(),),
                  ),
                  Spacer(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}