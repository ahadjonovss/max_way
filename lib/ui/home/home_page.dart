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
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  alignment: Alignment.topLeft,
                  height: height(context)*0.15,
                  width: height(context)*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                   gradient:const  LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     colors: [
                       Color(0xFFFFC85C),
                       Color(0xFFF1B301),
                     ]
                   )
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: height(context)*0.14,
                         height: height(context)*0.05,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.23),
                          borderRadius: BorderRadius.circular(20)

                        ),
                        child: Text("🔥 Yangi",style: TextStyle(color: Colors.white,fontSize: 14),),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height(context)*0.15,
                  width: height(context)*0.2,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
