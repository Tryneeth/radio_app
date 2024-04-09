import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/usecases/get_radio_stations_by_country_code.dart';

part 'radio_browser_event.dart';
part 'radio_browser_state.dart';
part 'radio_browser_bloc.freezed.dart';

@injectable
class RadioBrowserBloc extends Bloc<RadioBrowserEvent, RadioBrowserState> {
  RadioBrowserBloc(
    this._getRadioStationsByCountryCode,
  ) : super(const RadioBrowserState.initial()) {
    on<RadioBrowserEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        loadMore: (_) => _onLoadMore(),
      ),
    );

    add(const RadioBrowserEvent.load());
  }

  final GetRadioStationsByCountryCode _getRadioStationsByCountryCode;

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
        ),
      ),
    );
  }

  _onLoadMore() {}
}
