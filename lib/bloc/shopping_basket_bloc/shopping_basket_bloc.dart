import 'package:max_way/utils/file_importer/file_importer.dart';

part 'shopping_basket_event.dart';
part 'shopping_basket_state.dart';

class ShoppingBasketBloc extends Bloc<ShoppingBasketEvent, ShoppingBasketState> {
  ShoppingBasketBloc() : super(ShoppingBasketInitial()) {
    on<GetSavedFoodsEvent>(getFoods);
    add(GetSavedFoodsEvent());
  }

  getFoods(event, emit) async {
    emit(GettingSavedFoodsInProgress());
    try{
      var data = await getIt<ShoppingBasketRepository>().getSavedFoods();
      emit(GettingSavedFoodsInSuccess(foods: data));
    }catch(e){
      emit(GettingSavedFoodsInFailury(status: e.toString()));
    }
  }
}
