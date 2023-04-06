// ignore_for_file: must_be_immutable
import '../../../utils/file_importer/file_importer.dart';

class FoodCategoryItem extends StatelessWidget {
  FoodCategoryModel foodCategoryModel;
  FoodCategoryItem({required this.foodCategoryModel,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(foodCategoryModel.categoryName,
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont("Inter",
                color: AppColors.c222124,
                fontWeight: FontWeight.w700, fontSize: 36)),
        Column(
          children: [
            ...List.generate(foodCategoryModel.foods.length, (index) =>  FoodItem(food: foodCategoryModel.foods[index],))
          ],
        )
      ],
    );
  }
}
