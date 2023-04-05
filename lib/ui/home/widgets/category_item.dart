import 'package:max_way/utils/constants/color/color.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class CategoryItem extends StatelessWidget {
  final List<Color> gradientColors;
  final String title;
  final String subtitle;
  final String image;
  final Color textColor;
  const CategoryItem(
      {this.subtitle = "PIT\n - SA",
      this.title = "🔥 Yangi",
      this.image = AppImages.pizza,
        this.textColor=AppColors.cE76A06,
      this.gradientColors = const [
        AppColors.cFFC85C,
        AppColors.cF1B301,
      ],
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 10),
        alignment: Alignment.topLeft,
        height: height(context) * 0.16,
        width: height(context) * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: height(context) * 0.14,
              height: height(context) * 0.05,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.23),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                title,
                style: const  TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subtitle,
                    style:  TextStyle(
                        color: textColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w700)),
                Image.asset(
                  image,
                  width: height(context) * 0.1,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
