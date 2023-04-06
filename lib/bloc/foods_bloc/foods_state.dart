part of 'foods_bloc.dart';

@immutable
 class FoodsState extends Equatable {
  String message;
  List<CategoryFoods> foods;
  FormStatus status;

  FoodsState({required this.foods,required this.status,required this.message});
  copyWith({
    String? message,
    List<CategoryFoods>? foods,
    FormStatus? status
})=>FoodsState(foods: foods??this.foods, status: status??this.status, message: message??this.message);

  @override
  List<Object?> get props => [
    message,
    status,
    foods
  ];
}



