import 'package:flutter/material.dart';
import 'package:max_way/data/model/food_category_model.dart';
import 'package:max_way/ui/home/widgets/food_category_item.dart';

class ShoppingBasketPage extends StatelessWidget {
  FoodCategoryModel foodCategoryModel;
  ShoppingBasketPage({required this.foodCategoryModel,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoodCategoryItem(foodCategoryModel: foodCategoryModel),
    );
  }
}
