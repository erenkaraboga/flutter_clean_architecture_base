import 'package:bloc_base/data/api_services/country_api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkingModule {
  @lazySingleton
  Dio getDio() {
    final Dio dio = Dio();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, interceptor) async {
          //final token = localStorageService.getAccessToken().toBearer();
          options.headers["app-name"] = "B2C";
          options.headers["Authorization"] = "token";
          interceptor.next(options);
        },
      ),
    );
    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(requestBody: true, requestHeader: true));
    }
    return dio;
  }

  @lazySingleton
  CountryApiService getAuthApiService(Dio dio) =>
      CountryApiService(dio, baseUrl: "https://restcountries.com/v3.1/");
}

