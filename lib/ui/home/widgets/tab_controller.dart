import 'package:max_way/ui/home/widgets/food_item.dart';
import 'package:max_way/ui/home/widgets/food_category_item.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class TabBarViewController extends StatefulWidget {
   TabBarViewController({Key? key}) : super(key: key);

  @override
  State<TabBarViewController> createState() => _TabBarViewControllerState();
}

class _TabBarViewControllerState extends State<TabBarViewController> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Column(
      children: [
        TabBar(
          onTap: (value) {
            setState(() {
              activeIndex=value;
            });
          },
             isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.transparent,

            tabs: [
              TabItem(title: foods[0].categoryName, index: 0, activeIndex: activeIndex),
              TabItem(title: foods[1].categoryName, index: 1, activeIndex: activeIndex),
              TabItem(title: foods[2].categoryName, index: 2, activeIndex: activeIndex),
              TabItem(title: foods[3].categoryName, index: 3, activeIndex: activeIndex),
            ]),
        SizedBox(
          height: 2400,
          width: width(context),
          child:  TabBarView(children: [
            FoodCategoryItem(foodCategoryModel: foods[0]),
            FoodCategoryItem(foodCategoryModel: foods[1]),
            FoodCategoryItem(foodCategoryModel: foods[2]),
            FoodCategoryItem(foodCategoryModel: foods[3]),
          ]),
        )
      ],
    ));
  }
}
