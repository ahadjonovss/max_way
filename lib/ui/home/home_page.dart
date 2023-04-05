import 'package:max_way/ui/home/widgets/category_item.dart';
import 'package:max_way/utils/constants/color/color.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImages.logo,
                  width: height(context) * 0.06,
                ),
                const Text(
                  "Menyu",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const Text("Bolalar uchun"),
                const Text("Filiallar"),
                const Icon(Icons.shopping_basket),
                const Icon(Icons.menu),
              ],
            ),
            SizedBox(height: height(context) * 0.02),
            Image.asset(AppImages.burger, height: height(context) * 0.35),
            SizedBox(height: height(context) * 0.05),
            Text("Siz izlagan\nmazzali ta’mlar",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont("Open Sans",
                    fontWeight: FontWeight.w700, fontSize: 45)),
            SizedBox(height: height(context) * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryItem(),
                CategoryItem(
                  image: AppImages.combo,
                  subtitle: "KOM\n  -BO",
                  title: "🚀 Ko'p sotilgan",
                  gradientColors: [
                    AppColors.c800A7A,
                    AppColors.c800A7A,
                  ],
                  textColor: AppColors.cFC96F7,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
