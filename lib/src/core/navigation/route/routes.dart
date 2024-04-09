import 'package:auto_route/auto_route.dart';
import 'package:radio_app/src/core/navigation/router/router.dart';
import 'package:radio_app/src/presentation/radio/radio_page.dart';
import 'package:radio_app/src/presentation/radio_browser/radio_browser_page.dart';

part 'wrappers.dart';

final radioAppRoutes = [_radioPage, _radioBrowserPage];

final _radioPage = AutoRoute(
  page: RadioRoute.page,
);

final _radioBrowserPage = AutoRoute(
  initial: true,
  page: RadioBrowserRoute.page,
);
