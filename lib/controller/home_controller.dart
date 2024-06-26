import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = RxInt(1);
  RxInt selectedTabIndex = RxInt(0);

  void onItemChanged(int index) {
    selectedIndex(index);
    if (index == 1) {
      selectedTabIndex(0);
    }
  }

  void onTabchanged(int index) => selectedTabIndex(index);
}
