// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bloc_base/app/config/di/modules/bloc_module.dart' as _i15;
import 'package:bloc_base/app/config/di/modules/main_module.dart' as _i11;
import 'package:bloc_base/app/config/di/modules/networking_module.dart' as _i10;
import 'package:bloc_base/app/config/di/modules/repository_module.dart' as _i13;
import 'package:bloc_base/data/api_services/country_api_service.dart' as _i5;
import 'package:bloc_base/data/repositories/country_repository_impl.dart'
    as _i14;
import 'package:bloc_base/data/services/key_value_store.dart' as _i7;
import 'package:bloc_base/data/services/shared_preferences_key_value_store.dart'
    as _i12;
import 'package:bloc_base/data/services/user_local_storage_service.dart' as _i8;
import 'package:bloc_base/domain/repositories/country_repository.dart' as _i6;
import 'package:bloc_base/presentation/countries/countries_bloc.dart' as _i9;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkingModule = _$NetworkingModule();
    final mainModule = _$MainModule(this);
    final repositoryModule = _$RepositoryModule(this);
    final blocModule = _$BlocModule(this);
    gh.lazySingleton<_i3.Dio>(() => networkingModule.getDio());
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => mainModule.getSharedPreferences(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.CountryApiService>(
        () => networkingModule.getAuthApiService(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.CountryRepository>(
        () => repositoryModule.characterRepository);
    gh.factory<_i7.KeyValueStore>(
        () => mainModule.sharedPreferencesKeyValueStore);
    gh.singleton<_i8.UserModelLocalStorageService>(
        mainModule.localStorageService);
    gh.factory<_i9.CountriesBloc>(() => blocModule.countriesBloc);
    return this;
  }
}

class _$NetworkingModule extends _i10.NetworkingModule {}

class _$MainModule extends _i11.MainModule {
  _$MainModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i12.SharedPreferencesKeyValueStore get sharedPreferencesKeyValueStore =>
      _i12.SharedPreferencesKeyValueStore(_getIt<_i4.SharedPreferences>());

  @override
  _i8.UserModelLocalStorageService get localStorageService =>
      _i8.UserModelLocalStorageService(_getIt<_i7.KeyValueStore>());
}

class _$RepositoryModule extends _i13.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i14.CountryRepositoryImpl get characterRepository =>
      _i14.CountryRepositoryImpl(_getIt<_i5.CountryApiService>());
}

class _$BlocModule extends _i15.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i9.CountriesBloc get countriesBloc =>
      _i9.CountriesBloc(_getIt<_i6.CountryRepository>());
}
