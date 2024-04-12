part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.load() = _LoadFavoritesEvent;
  const factory FavoritesEvent.openStation(RadioStation station) =
      _OpenStationFavoritesEvent;
}
