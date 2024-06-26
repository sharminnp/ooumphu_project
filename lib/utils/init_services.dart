import 'package:get/get.dart';
import 'package:oomphu/controller/home_controller.dart';
import 'package:oomphu/controller/login_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
    Get.put<HomeController>(HomeController());
  }
}

Future<void> initService() async {
  Get.put<LoginController>(LoginController());
  Get.put<HomeController>(HomeController());
}
