part of 'radio_browser_bloc.dart';

@freezed
class RadioBrowserEvent with _$RadioBrowserEvent {
  const factory RadioBrowserEvent.load() = _LoadRadioBrowserEvent;
  const factory RadioBrowserEvent.loadMore() = _LoadMoreRadioBrowserEvent;
}