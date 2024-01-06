import 'package:auto_route/auto_route.dart';

import '../../presentation/countries/countries_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CountriesRoute.page, initial: true),
      ];
}
