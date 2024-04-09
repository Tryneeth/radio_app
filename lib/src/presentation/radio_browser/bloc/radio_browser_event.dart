part of 'radio_browser_bloc.dart';

@freezed
class RadioBrowserEvent with _$RadioBrowserEvent {
  const factory RadioBrowserEvent.load() = _LoadRadioBrowserEvent;
  const factory RadioBrowserEvent.loadMore() = _LoadMoreRadioBrowserEvent;
  const factory RadioBrowserEvent.openStation(RadioStation station) =
      _OpenStationRadioBrowserEvent;
  const factory RadioBrowserEvent.changeCountry(String countryCode) =
      _ChangeCountryRadioBrowserEvent;
}
