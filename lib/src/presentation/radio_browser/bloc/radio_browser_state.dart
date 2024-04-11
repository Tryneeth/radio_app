part of 'radio_browser_bloc.dart';

@freezed
class RadioBrowserState with _$RadioBrowserState {
  const factory RadioBrowserState.initial() = _InitialRadioBrowserState;

  const factory RadioBrowserState.loading() = _LoadingRadioBrowserState;

  const factory RadioBrowserState.content({
    @Default(false) bool isLoadingMore,
    @Default([]) List<RadioStation> stations,
    @Default(0) int offset,
    @Default(20) int limit,
    @Default(false) bool isEndOfData,
    String? countryCode,
    String? countryName,
  }) = _ContentRadioBrowserState;

  const factory RadioBrowserState.error({
    Exception? error,
  }) = _ErrorRadioBrowserState;
}
