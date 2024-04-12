import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/usecases/get_all_favorites_stations_usecase.dart';
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(this._getAllFavoritesStationsUsecase, this._navigator)
      : super(const FavoritesState()) {
    on<FavoritesEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        openStation: (e) => _onOpenStation(e),
      ),
    );

    add(const FavoritesEvent.load());
  }

  final GetAllFavoritesStationsUsecase _getAllFavoritesStationsUsecase;
  final RadioBrowserNavigator _navigator;

  void _onLoad(Emitter<FavoritesState> emit) async {
    final response = await _getAllFavoritesStationsUsecase();
    response.fold(
      (left) => null,
      (right) => emit(
        state.copyWith(
          stations: right,
        ),
      ),
    );
  }

  Future<void> _onOpenStation(_OpenStationFavoritesEvent e) async {
    await _navigator.openRadioStation(e.station);
    add(const FavoritesEvent.load());
  }
}
