import 'package:get/get.dart';
import 'package:dc/utilities/table class.dart';

class ListController extends GetxController {
  RxList items = [].obs;

  void addItem(TableObject item) {
    items.add(item);
  }
}
