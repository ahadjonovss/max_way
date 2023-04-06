import 'package:max_way/data/model/food_model.dart';

class FoodCategoryModel{
  final String categoryName;
  List<FoodModel> foods;
  FoodCategoryModel({required this.categoryName,required this.foods});
}


List<FoodCategoryModel> foods = [
  FoodCategoryModel(categoryName: "Pitsa", foods: pizzas),
  FoodCategoryModel(categoryName: "Kombo", foods: combos),
  FoodCategoryModel(categoryName: "Ichimlikar", foods: drinks),
  FoodCategoryModel(categoryName: "Barchasi", foods: [...pizzas,...combos,...drinks]),
];