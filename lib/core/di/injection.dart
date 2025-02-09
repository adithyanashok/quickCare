// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';

// final getIt = GetIt.instance;

// @InjectableInit(
//   initializerName: 'init',
// )
// void configureDependencies() =>
//     getIt.registerLazySingleton();
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/core/di/injection.config.dart';

final GetIt getIt = GetIt.instance; // GetIt instance

@InjectableInit()
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
}
