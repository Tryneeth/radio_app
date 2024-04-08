part of 'radio_bloc.dart';

@freezed
class RadioEvent with _$RadioEvent {
  const factory RadioEvent.load() = _LoadRadioEvent;
  const factory RadioEvent.setChannel(String url) = _SetChannelRadioEvent;
  const factory RadioEvent.play() = _PlayChannelRadioEvent;
  const factory RadioEvent.pause() = _PauseChannelRadioEvent;
  const factory RadioEvent.stop() = _StopChannelRadioEvent;
}
