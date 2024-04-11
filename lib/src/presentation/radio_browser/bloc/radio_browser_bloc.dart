import 'package:bloc/bloc.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/usecases/get_radio_stations_by_country_code.dart';
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart';

part 'radio_browser_event.dart';
part 'radio_browser_state.dart';
part 'radio_browser_bloc.freezed.dart';

@injectable
class RadioBrowserBloc extends Bloc<RadioBrowserEvent, RadioBrowserState> {
  RadioBrowserBloc(
    this._getRadioStationsByCountryCode,
    this._navigator,
  ) : super(const RadioBrowserState.initial()) {
    on<RadioBrowserEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        loadMore: (_) => _onLoadMore(emit),
        openStation: (e) => _onOpenStation(emit, e),
        changeCountry: (e) => _onChangeCountry(emit, e),
      ),
    );

    add(const RadioBrowserEvent.load());
  }

  final GetRadioStationsByCountryCode _getRadioStationsByCountryCode;
  final RadioBrowserNavigator _navigator;

  Future<void> _onLoad(Emitter<RadioBrowserState> emit) async {
    final (offset, limit) = (0, 20);

    final platformCountryCode =
        PlatformDispatcher.instance.locale.countryCode ?? 'ES';

    final response = await _getRadioStationsByCountryCode(
      platformCountryCode,
      offset: offset,
      limit: limit,
    );

    response.fold(
      (left) => emit(RadioBrowserState.error(error: left)),
      (right) => emit(
        RadioBrowserState.content(
          stations: right,
          offset: offset,
          limit: limit,
          countryCode: platformCountryCode,
          countryName: Country.parse(platformCountryCode).name,
        ),
      ),
    );
  }

  Future<void> _onLoadMore(Emitter<RadioBrowserState> emit) async {
    final currentState = state.mapOrNull(content: (value) => value);

    if (currentState == null ||
        currentState.isEndOfData ||
        currentState.isLoadingMore) {
      return;
    }

    emit(currentState.copyWith(isLoadingMore: true));

    final (offset, limit) = (
      currentState.offset + currentState.limit,
      currentState.limit,
    );

    final response = await _getRadioStationsByCountryCode(
      currentState.countryCode!,
      offset: offset,
      limit: limit,
    );

    response.fold(
      (left) => emit(RadioBrowserState.error(error: left)),
      (right) => emit(
        currentState.copyWith(
          isLoadingMore: false,
          stations: [...currentState.stations, ...right],
          offset: offset,
          limit: limit,
          isEndOfData: right.isEmpty,
        ),
      ),
    );
  }

  _onOpenStation(
    Emitter<RadioBrowserState> emit,
    _OpenStationRadioBrowserEvent e,
  ) =>
      _navigator.openRadioStation(e.station);

  Future<void> _onChangeCountry(
    Emitter<RadioBrowserState> emit,
    _ChangeCountryRadioBrowserEvent e,
  ) async {
    final (offset, limit) = (0, 20);

    final response = await _getRadioStationsByCountryCode(
      e.countryCode,
      offset: offset,
      limit: limit,
    );

    response.fold(
      (left) => emit(RadioBrowserState.error(error: left)),
      (right) => emit(
        RadioBrowserState.content(
          stations: right,
          offset: offset,
          limit: limit,
          countryCode: e.countryCode,
          countryName: Country.parse(e.countryCode).name,
        ),
      ),
    );
  }
}
