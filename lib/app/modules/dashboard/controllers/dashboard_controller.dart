import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  final tabIndex = 0.obs;

  void changePage(int index){
    tabIndex.value = index;
  }

  final count = 0.obs;



  void increment() => count.value++;
}
