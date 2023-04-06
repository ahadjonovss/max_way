import 'package:max_way/utils/file_importer/file_importer.dart';

final getIt = GetIt.instance;

void setup() {
 getIt.registerLazySingleton(() => LocalDatabase());
 getIt.registerLazySingleton(() => ShoppingBasketRepository());
}