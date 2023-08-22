import 'package:get/get.dart';
import 'package:recipe_and_diet/routes/app_routes.dart';
import 'package:recipe_and_diet/views/recipe_details_screen.dart';
import 'package:recipe_and_diet/views/seach_screen.dart';

class AppPages{
  static var list = [
    GetPage(
      name: AppRoutes.search_screen,
      page: () =>  SearchScreen(),
      // binding: FriendListBinding(),
    ),
    GetPage(
      name: AppRoutes.recipe_detail_screen,
      page: () => RecipeDetailsScreen(),
      // binding: FriendBinding(),
    ),
  ];
}