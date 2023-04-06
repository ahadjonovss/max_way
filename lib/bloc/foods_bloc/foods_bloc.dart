import 'package:max_way/utils/file_importer/file_importer.dart';

part 'foods_event.dart';
part 'foods_state.dart';

class FoodsBloc extends Bloc<FoodsEvent, FoodsState> {
  FoodsBloc() : super(FoodsInitial()) {
    on<FoodsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
