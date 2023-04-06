import 'package:max_way/utils/file_importer/file_importer.dart';

class TabBarViewController extends StatelessWidget {
   TabBarViewController({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Column(
      children: [
        BlocBuilder<FoodsBloc,FoodsState>(
          builder: (context, state) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
             children: [
               Container(
                 height: height(context)*0.06,
                 padding: const EdgeInsets.all(10),
                 width: height(context)*0.06,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8),
                     color: AppColors.cF5F5F5
                 ),
                 child: SvgPicture.asset(AppImages.filter,color: Colors.black,width: 20,fit: BoxFit.fitWidth,),

               ),
               TabBar(
                   onTap: (value) {
                     context.read<FoodsBloc>().add(GetFoodsEvent(index: value));

                   },
                   isScrollable: true,
                   labelColor: Colors.black,
                   unselectedLabelColor: Colors.grey,
                   indicatorColor: Colors.transparent,

                   tabs: [
                     TabItem(title: foods[0].name, index: 0, activeIndex: state.activeIndex),
                     TabItem(title: foods[1].name, index: 1, activeIndex: state.activeIndex),
                     TabItem(title: foods[2].name, index: 2, activeIndex: state.activeIndex),
                     TabItem(title: foods[3].name, index: 3, activeIndex: state.activeIndex),
                   ])
             ],
            ),
          ),

        ),
      BlocBuilder<FoodsBloc,FoodsState>(builder: (context, state) {
        if(state.status==FormStatus.gettingFoodsInSuccess){
          return TabBarViewItem(category: state.foods!);
        }else if(state.status==FormStatus.gettingFoodsInFailury){
          return Text(state.message);
        }else{
          return  CategoryShimmer();
        }

      },)
      ],
    ));
  }
}
