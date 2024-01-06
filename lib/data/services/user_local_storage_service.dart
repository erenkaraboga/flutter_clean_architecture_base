
import 'package:bloc_base/data/services/shared_preferences_keys.dart';
import 'key_value_store.dart';

class UserModelLocalStorageService {
  final KeyValueStore _keyValueStore;

  UserModelLocalStorageService(this._keyValueStore);

  String getAccessToken() => _keyValueStore.getString(SharedPreferencesKeys.accessToken) ?? "";

  Future<bool> setAccessToken(String value) => _keyValueStore.setString(SharedPreferencesKeys.accessToken, value);

  String getRefreshToken() => _keyValueStore.getString(SharedPreferencesKeys.refreshToken) ?? "";

  Future<bool> setRefreshToken(String value) => _keyValueStore.setString(SharedPreferencesKeys.refreshToken, value);


  void logOut() {
    _keyValueStore.clear();
  }
}
