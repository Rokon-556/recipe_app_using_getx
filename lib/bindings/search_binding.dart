import 'package:get/get.dart';
import 'package:recipe_and_diet/controllers/search_controller.dart';

class SearchBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SearchController());
  }

}