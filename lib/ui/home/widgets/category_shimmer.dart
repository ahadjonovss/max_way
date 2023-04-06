import 'package:max_way/utils/file_importer/file_importer.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12,),
          Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.4),
            highlightColor: Colors.white,

            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              height: 30,
              width: 230,
            ),
          ),
          ListView.builder(
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(top: 20),
              height: height(context)*0.21,
              width: width(context),
              padding: EdgeInsets.all(height(context)*0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.4),
                    highlightColor: Colors.white,
                    child: Container(
                      height: height(context)*0.17,
                      width: height(context)*0.17,
                      alignment: Alignment.topLeft,
                      decoration:  BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      // child: food.isSpicy?Container(
                      //   alignment: Alignment.center,
                      //   height: height(context)*0.06,
                      //   width: height(context)*0.06,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     color: Colors.white.withOpacity(0.8),
                      //
                      //   ),
                      //   child: const Text("🔥",style: TextStyle(fontSize: 20),),
                      //
                      // ):null,
                    ),
                  ),
                  SizedBox(width: height(context)*0.02,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.4),
                          highlightColor: Colors.white,

                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            height: 20,
                            width: 150,
                          ),
                        ),
                        SizedBox(height: height(context) * 0.02),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.4),
                          highlightColor: Colors.white,

                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            height: 20,
                            width: 120,
                          ),
                        ),
                        SizedBox(height: height(context) * 0.007),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.4),
                          highlightColor: Colors.white,

                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            height: 20,
                            width: 150,
                          ),
                        ),
                        SizedBox(height: height(context) * 0.007),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.4),
                          highlightColor: Colors.white,

                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            height: 20,
                            width: 120,
                          ),
                        ),
                        SizedBox(height: height(context) * 0.008),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.4),
                          highlightColor: Colors.white,

                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            height: 20,
                            width: 150,
                          ),
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),)
        ],
      ),
    );
  }
}
