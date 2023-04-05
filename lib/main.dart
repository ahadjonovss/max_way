import 'package:max_way/utils/file_importer/file_importer.dart';

void main() async{
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}