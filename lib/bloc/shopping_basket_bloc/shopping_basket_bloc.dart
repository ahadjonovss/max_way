import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';
import 'package:meta/meta.dart';

part 'shopping_basket_event.dart';
part 'shopping_basket_state.dart';

class ShoppingBasketBloc extends Bloc<ShoppingBasketEvent, ShoppingBasketState> {
  ShoppingBasketBloc() : super(ShoppingBasketInitial()) {
    on<ShoppingBasketEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
