import 'package:max_way/utils/file_importer/file_importer.dart';

class TabItem extends StatelessWidget {
  final String title;
  final int index;
  int activeIndex;
  TabItem({required this.title,required this.index,required this.activeIndex,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = index==activeIndex;
    return Tab(child:  Container(
      width: isActive?height(context) * 0.1:height(context) * 0.08,
      height: height(context) * 0.06,
      alignment: Alignment.center,
      decoration: isActive?BoxDecoration(
          color: AppColors.cF1B301,
          borderRadius: BorderRadius.circular(27)):null,
      child: Text(
        title,
        style:  TextStyle(color: isActive?Colors.white:Colors.grey, fontSize: 16),
      ),
    ),);
  }
}
