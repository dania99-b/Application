import 'package:applications_project/Controller/UploadController.dart';
import 'package:applications_project/component/Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global.dart';

class UploadFile extends GetView<UploadController> {
  const UploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          // title: Text('Upload File'),
          // centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 100,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.pink.shade100),
                    onPressed: () {
                      controller.pickfile();
                    },
                    child: Obx(
                      () => Center(
                          child: Text(
                        controller.refreshScreen.value,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 100,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () async {
                    if (controller.file != null)
                      controller.callUpload(controller.file!.path);
                    else
                      Get.defaultDialog(
                        middleText: "select file first ",
                        titleStyle: TextStyle(color: Colors.pink),
                      );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.upload,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        'Upload File',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
