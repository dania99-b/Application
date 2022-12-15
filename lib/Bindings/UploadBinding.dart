import 'package:applications_project/Controller/UploadController.dart';
import 'package:applications_project/view/UploadFile.dart';
import 'package:get/get.dart';

class UploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadController(), fenix: true);
  }
}
