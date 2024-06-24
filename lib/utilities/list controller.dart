import 'package:get/get.dart';
import 'package:dc/utilities/table class.dart';

class ListController extends GetxController {
  RxList table = [].obs;

  void addItem(TableObject item) {
    table.add(item);
  }
  void clearItems() {
    table.clear();
  }
}

