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
          return const CircularProgressIndicator();
        }

      },)
      ],
    ));
  }
}
