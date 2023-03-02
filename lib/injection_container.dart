import 'package:bibliotecamobile/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  sl.registerFactory(
    () => HomeCubit(),
  );
}
