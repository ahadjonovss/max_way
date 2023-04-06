import 'package:max_way/utils/file_importer/file_importer.dart';

class ShoppingBasketRepository{

  Future<String> addFood(FoodModel food) async{
    FoodCategoryModel foods = await getSavedFoods();
    bool isThereIs = false;
    for (var element in foods.foods) {
      if(element.name==food.name){
        isThereIs=true;
        break;
      }
    }
    if(!isThereIs){
      await getIt<LocalDatabase>().addFood(food);
      return "${food.name} savatchaga qo'shildi!";
    }
    return "${food.name} savatchada allaqachon mavjud!";
  }

  Future<FoodCategoryModel> getSavedFoods() async{
    List result = await getIt<LocalDatabase>().getFoods();
    return FoodCategoryModel(categoryName: "Saqlanganlar", foods: result.map((e) => FoodModel.fromJson(e)).toList());


  }

}
