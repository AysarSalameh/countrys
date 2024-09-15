// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CountryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CountryScreen(),
      );
    },
    DetalisRoute.name: (routeData) {
      final args = routeData.argsAs<DetalisRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetalisScreen(country: args.country),
      );
    },
  };
}

/// generated route for
/// [CountryScreen]
class CountryRoute extends PageRouteInfo<void> {
  const CountryRoute({List<PageRouteInfo>? children})
      : super(
          CountryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CountryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetalisScreen]
class DetalisRoute extends PageRouteInfo<DetalisRouteArgs> {
  DetalisRoute({
    required Country country,
    List<PageRouteInfo>? children,
  }) : super(
          DetalisRoute.name,
          args: DetalisRouteArgs(country: country),
          initialChildren: children,
        );

  static const String name = 'DetalisRoute';

  static const PageInfo<DetalisRouteArgs> page =
      PageInfo<DetalisRouteArgs>(name);
}

class DetalisRouteArgs {
  const DetalisRouteArgs({required this.country});

  final Country country;

  @override
  String toString() {
    return 'DetalisRouteArgs{country: $country}';
  }
}
