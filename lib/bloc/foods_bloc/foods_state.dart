part of 'foods_bloc.dart';

@immutable
 class FoodsState extends Equatable {
  String message;
  CategoryFoods? foods;
  FormStatus status;
  int activeIndex;

  FoodsState({required this.activeIndex, this.foods,required this.status,required this.message});
  copyWith({
    int? activeIndex,
    String? message,
    CategoryFoods? foods,
    FormStatus? status
})=>FoodsState(foods: foods??this.foods, status: status??this.status, message: message??this.message,activeIndex: activeIndex??this.activeIndex);

  @override
  List<Object?> get props => [
    message,
    status,
    foods,
    activeIndex
  ];
}



