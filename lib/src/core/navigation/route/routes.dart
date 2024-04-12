import 'package:auto_route/auto_route.dart';
import 'package:radio_app/src/core/navigation/router/router.dart';
import 'package:radio_app/src/presentation/favorites/favorites_page.dart';
import 'package:radio_app/src/presentation/radio/radio_page.dart';
import 'package:radio_app/src/presentation/radio_browser/radio_browser_page.dart';

part 'wrappers.dart';

final radioAppRoutes = [
  _radioBrowserPage,
  _radioPage,
  _favoritePage,
];

final _radioBrowserPage = AutoRoute(
  initial: true,
  path: '/',
  page: RadioBrowserRoute.page,
);

final _radioPage = AutoRoute(
  path: '/radio',
  page: RadioRoute.page,
);

final _favoritePage = AutoRoute(
  path: '/favorites',
  page: FavoritesRoute.page,
);
