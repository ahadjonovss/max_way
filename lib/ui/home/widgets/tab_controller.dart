import 'package:max_way/bloc/foods_bloc/foods_bloc.dart';
import 'package:max_way/ui/home/widgets/tab_bar_view.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class TabBarViewController extends StatelessWidget {
   TabBarViewController({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Column(
      children: [
        BlocBuilder<FoodsBloc,FoodsState>(
          builder: (context, state) => TabBar(
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
              ]),

        ),
      BlocBuilder<FoodsBloc,FoodsState>(builder: (context, state) {
        if(state.status==FormStatus.gettingFoodsInSuccess){
          return TabBarViewItem(category: state.foods!);
        }else if(state.status==FormStatus.gettingFoodsInFailury){
          return Text(state.message);
        }else{
          return  SizedBox(
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
                Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: height(context)*0.21,
                    width: width(context),
                    padding: EdgeInsets.all(height(context)*0.02),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.withOpacity(0.2))
                    ),
                  ),
                )
              ],
            ),
          );
        }

      },)
      ],
    ));
  }
}
