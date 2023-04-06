import 'package:max_way/ui/home/widgets/food_category_item.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class TabBarViewItem extends StatelessWidget {
  CategoryFoods category;
  TabBarViewItem({required this.category,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(category.foods.length, (index) => FoodCategoryItem(foodCategoryModel: category.foods[index]))
    );
  }
}
