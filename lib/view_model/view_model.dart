import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class ViewModel extends ChangeNotifier {
  final picker = ImagePicker();
  File? imageFile;

  /// ImagePickerを開く
  ///
  /// @param event イベント
  /// @return なし
  Future pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      notifyListeners();
    }
  }
}