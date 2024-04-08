import 'package:auto_route/auto_route.dart';
import 'package:radio_app/main.dart';
import 'package:radio_app/src/core/navigation/router/router.dart';

part 'wrappers.dart';

final radioAppRoutes = [_homePage];

final _homePage = AutoRoute(
  initial: true,
  page: HomePageRoute.page,
);
