import 'package:applications_project/Services/UploadService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';

class UploadController extends GetxController {
  FilePickerResult? result;
  PlatformFile? file;
  RxString refreshScreen = 'Select file'.obs;
  String? path;
  Future pickfile() async {
    result = await FilePicker.platform.pickFiles();

    file = result!.files.single;

    path = result!.files.single.path;
    refreshScreen.value = file!.name;
    update();
  }

  callUpload(String? path) {
    try {
      var response = UploadService.Upload('uploadFile', path!);
      if (response != null) {
        Get.defaultDialog(
          middleText: "File Uploaded successfuly",
          middleTextStyle: TextStyle(
            color: Colors.pink,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        );
      } else {
        Get.defaultDialog(
          title: 'Try Again',
          middleText: "File did not Upload ",
          titleStyle: TextStyle(color: Colors.pink),
        );
      }
    } finally {}
  }
}
