import 'package:max_way/data/model/food_model.dart';

class FoodCategoryModel{
  final String categoryName;
  List<FoodModel> foods;
  FoodCategoryModel({required this.categoryName,required this.foods});
}


class CategoryFoods{
  final String name;
  final List<FoodCategoryModel> foods;

  CategoryFoods({required this.foods,required this.name});
}


List<CategoryFoods> foods = [
 CategoryFoods(foods: [FoodCategoryModel(categoryName: "Pitsa", foods: pizzas)], name: "Pitsa"),
 CategoryFoods(foods: [FoodCategoryModel(categoryName: "Kombo", foods: combos)], name: "Kombo"),
 CategoryFoods(foods: [FoodCategoryModel(categoryName: "Ichimliklar", foods: drinks)], name: "Ichimliklar"),
 CategoryFoods(foods: [
   FoodCategoryModel(categoryName: "Pitsa", foods: pizzas),
   FoodCategoryModel(categoryName: "Kombo", foods: combos),
   FoodCategoryModel(categoryName: "Ichimliklar", foods: drinks)], name: "Barchasi"),
];