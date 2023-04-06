import 'package:max_way/utils/file_importer/file_importer.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 20),
      height: height(context)*0.21,
      width: width(context),
      padding: EdgeInsets.all(height(context)*0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.withOpacity(0.2))
      ),
      child: Row(
        children: [
          Container(
            height: height(context)*0.17,
            width: height(context)*0.17,
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.gavaya),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              alignment: Alignment.center,
              height: height(context)*0.06,
              width: height(context)*0.06,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.8),

              ),
              child: const Text("🔥",style: TextStyle(fontSize: 20),),

            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mexica 🌶️",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont("Inter",
                        color: AppColors.c222124,
                        fontWeight: FontWeight.w700, fontSize: 18)),
                SizedBox(height: height(context) * 0.005),
                Text("Горячая закуска с митболами из говядины, томатами,моцареллой и соусом чипотле",
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    style: GoogleFonts.getFont("Inter",
                        color: AppColors.c222124,
                        fontWeight: FontWeight.w400, fontSize: 12)),
                SizedBox(height: height(context) * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("64,000 UZS",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont("Inter",
                            color: AppColors.c222124,
                            fontWeight: FontWeight.w700, fontSize: 18)),
                    Container(
                        alignment: Alignment.center,
                        height: height(context)*0.06,
                        width: height(context)*0.06,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.cF1B301,

                        ),
                        child: const Icon(Icons.add,color: Colors.white,)

                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
