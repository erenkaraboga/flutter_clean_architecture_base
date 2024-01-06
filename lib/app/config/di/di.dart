import 'package:bloc_base/app/config/di/di.config.dart';
import 'package:bloc_base/app/routing/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;

@InjectableInit()
Future<void> setupGetIt() async {
  _getIt.registerSingleton<AppRouter>(AppRouter());
  await _getIt.init();
}
T inject<T extends Object>() => _getIt.get<T>();