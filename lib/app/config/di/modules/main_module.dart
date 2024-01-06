import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/services/key_value_store.dart';
import '../../../../data/services/shared_preferences_key_value_store.dart';
import '../../../../data/services/user_local_storage_service.dart';

@module
abstract class MainModule {
  @Injectable(as: KeyValueStore)
  SharedPreferencesKeyValueStore get sharedPreferencesKeyValueStore;

  @preResolve
  Future<SharedPreferences> getSharedPreferences() async => SharedPreferences.getInstance();

  @singleton
  UserModelLocalStorageService get localStorageService;
}
