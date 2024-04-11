part of 'radio_bloc.dart';

@freezed
class RadioState with _$RadioState {
  const factory RadioState({
    String? stationUrl,
    @Default(false) bool isPlaying,
    @Default([]) List<String> metadata,
  }) = _RadioState;
}

extension RadioStateX on RadioState {
  String get stationName => metadata.firstOrNull ?? '';
  String get stationDescription => metadata.elementAtOrNull(1) ?? '';
}
