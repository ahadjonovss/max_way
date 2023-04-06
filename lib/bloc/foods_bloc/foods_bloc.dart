import 'package:max_way/utils/file_importer/file_importer.dart';

part 'foods_event.dart';
part 'foods_state.dart';

class FoodsBloc extends Bloc<GetFoodsEvent, FoodsState> {
  FoodsBloc() : super(FoodsState(status: FormStatus.pure, message: "",activeIndex: 0)) {
    on<GetFoodsEvent>(getFoods);
    add(GetFoodsEvent(index: 0));
  }

  void getFoods(GetFoodsEvent event, emit) async {
   emit(state.copyWith(status: FormStatus.gettingFoodsInProgress));
   await Future.delayed(const Duration(seconds: 5));
   emit(state.copyWith(foods: foods[event.index],status: FormStatus.gettingFoodsInSuccess,activeIndex: event.index));
  }
}
