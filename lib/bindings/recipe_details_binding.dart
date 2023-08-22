import 'package:get/get.dart';
import 'package:recipe_and_diet/controllers/recipe_details_controller.dart';

class RecipeDetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RecipeDetailsController());
  }

}