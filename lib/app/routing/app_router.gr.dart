// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CountriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CountriesPage(),
      );
    }
  };
}

/// generated route for
/// [CountriesPage]
class CountriesRoute extends PageRouteInfo<void> {
  const CountriesRoute({List<PageRouteInfo>? children})
      : super(
          CountriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CountriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
