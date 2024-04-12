// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$ClientRouter extends RootStackRouter {
  // ignore: unused_element
  _$ClientRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FavoritesRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const FavoritesScreen(),
      );
    },
    RadioBrowserRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const RadioBrowserScreen(),
      );
    },
    RadioRoute.name: (routeData) {
      final args = routeData.argsAs<RadioRouteArgs>();
      return AutoRoutePage<void>(
        routeData: routeData,
        child: RadioScreen(
          key: args.key,
          station: args.station,
        ),
      );
    },
  };
}

/// generated route for
/// [FavoritesScreen]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RadioBrowserScreen]
class RadioBrowserRoute extends PageRouteInfo<void> {
  const RadioBrowserRoute({List<PageRouteInfo>? children})
      : super(
          RadioBrowserRoute.name,
          initialChildren: children,
        );

  static const String name = 'RadioBrowserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RadioScreen]
class RadioRoute extends PageRouteInfo<RadioRouteArgs> {
  RadioRoute({
    Key? key,
    required RadioStation station,
    List<PageRouteInfo>? children,
  }) : super(
          RadioRoute.name,
          args: RadioRouteArgs(
            key: key,
            station: station,
          ),
          initialChildren: children,
        );

  static const String name = 'RadioRoute';

  static const PageInfo<RadioRouteArgs> page = PageInfo<RadioRouteArgs>(name);
}

class RadioRouteArgs {
  const RadioRouteArgs({
    this.key,
    required this.station,
  });

  final Key? key;

  final RadioStation station;

  @override
  String toString() {
    return 'RadioRouteArgs{key: $key, station: $station}';
  }
}
