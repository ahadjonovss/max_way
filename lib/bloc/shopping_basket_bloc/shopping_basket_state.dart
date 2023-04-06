part of 'shopping_basket_bloc.dart';

@immutable
abstract class ShoppingBasketState {}

class ShoppingBasketInitial extends ShoppingBasketState {}

class GettingSavedFoodsInProgress extends ShoppingBasketState{}
class GettingSavedFoodsInSuccess extends ShoppingBasketState{
  final FoodCategoryModel foods;
  GettingSavedFoodsInSuccess({required this.foods});

}
class GettingSavedFoodsInFailury extends ShoppingBasketState{
  final String status;

  GettingSavedFoodsInFailury({required this.status});
}


