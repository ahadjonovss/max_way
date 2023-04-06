import 'package:max_way/data/model/food_model.dart';
import 'package:max_way/service/local_db_servcie.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class ShoppingBasketRepository{

  void addFood(FoodModel food) async=> await getIt<LocalDatabase>().addFood(food);

  Future<FoodCategoryModel> getSavedFoods() async{
    List result = await getIt<LocalDatabase>().getFoods();
    return FoodCategoryModel(categoryName: "Saqlanganlar", foods: result.map((e) => FoodModel.fromJson(e)).toList());


  }

}
