import 'package:max_way/ui/home/widgets/food_item.dart';
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
    return DefaultTabController(length: 4, child: ListView(
      shrinkWrap: true,
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
              TabItem(title: "Pitsa", index: 0, activeIndex: activeIndex),
              TabItem(title: "Burger", index: 1, activeIndex: activeIndex),
              TabItem(title: "Kombo", index: 2, activeIndex: activeIndex),
              TabItem(title: "Barchasi", index: 3, activeIndex: activeIndex),
            ]),
        SizedBox(
          height: 2400,
          width: width(context),
          child: TabBarView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pitsa",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont("Inter",
                        color: AppColors.c222124,
                        fontWeight: FontWeight.w700, fontSize: 36)),
                Column(
                  children: [
                    ...List.generate(10, (index) => FoodItem())
                  ],
                )
              ],
            ),

            Container(),
            Container(),
            Container(),
          ]),
        )
      ],
    ));
  }
}
