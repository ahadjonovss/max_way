import '../../../utils/file_importer/file_importer.dart';

class FoodCategoryItem extends StatelessWidget {
  const FoodCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pitsa",
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont("Inter",
                color: AppColors.c222124,
                fontWeight: FontWeight.w700, fontSize: 36)),
        Column(
          children: [
            ...List.generate(10, (index) => const FoodItem())
          ],
        )
      ],
    );
  }
}
