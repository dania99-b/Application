import 'package:applications_project/Controller/RegisterController.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController(), fenix: true);
  }
}
