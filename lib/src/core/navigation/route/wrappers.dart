part of 'routes.dart';

@RoutePage<void>()
class RadioScreen extends RadioPage {
  const RadioScreen({
    super.key,
    required super.station,
  });
}

@RoutePage<void>()
class RadioBrowserScreen extends RadioBrowserPage {
  const RadioBrowserScreen({super.key});
}
