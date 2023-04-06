import 'package:max_way/utils/file_importer/file_importer.dart';

class ShoppingBasketPage extends StatelessWidget {
  ShoppingBasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () {
          Navigator.pop(context);
        },),
        title: Image.asset(AppImages.logo,width: 40,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding:const  EdgeInsets.all(20),
            width: width(context),
            child: BlocProvider(
              create: (context) => ShoppingBasketBloc(),
              child: BlocBuilder<ShoppingBasketBloc,ShoppingBasketState>(builder: (context, state) {
                if(state is GettingSavedFoodsInSuccess){
                  return state.foods.foods.isNotEmpty?FoodCategoryItem(foodCategoryModel: state.foods):Lottie.asset(AppImages.empty);
                }else if(state is GettingSavedFoodsInProgress){
                  return const CategoryShimmer();
                }else if(state is GettingSavedFoodsInFailury){
                  return SafeArea(child: Text(state.status));
                }
                return Container();
              },),

            ),
          ),
        ),
      ),
    );
  }
}
