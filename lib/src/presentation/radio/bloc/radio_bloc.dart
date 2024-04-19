import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/domain/usecases/get_single_favorite_station_usecase.dart';
import 'package:radio_app/src/domain/usecases/remove_favorite_radio_station_usecase.dart';
import 'package:radio_app/src/domain/usecases/save_favorite_radio_station_usecase.dart';
import 'package:radio_player/radio_player.dart';
import 'package:rxdart/rxdart.dart';

part 'radio_event.dart';
part 'radio_state.dart';
part 'radio_bloc.freezed.dart';

@injectable
class RadioBloc extends Bloc<RadioEvent, RadioState> {
  RadioBloc(
    this._radioPlayer,
    @factoryParam RadioStation station,
    this._saveFavoriteRadioStationUsecase,
    this._removeFavoriteRadioStationUsecase,
    this._getSingleFavoriteStationUsecase,
  )   : _station = station,
        super(const RadioState()) {
    on<RadioEvent>(
      (event, emit) => event.mapOrNull(
        load: (_) => _onLoad(emit),
        play: (_) => _onPlay(emit),
        pause: (_) => _onPause(emit),
        stop: (_) => _onStop(emit),
        toggleFavorite: (_) => _onToggleFavorite(emit),
      ),
      transformer: sequential(),
    );
    on<_SetChannelRadioEvent>(
      _onSetChannel,
      transformer: sequential(),
    );

    add(const RadioEvent.load());
  }

  final RadioPlayer _radioPlayer;
  final RadioStation _station;
  final GetSingleFavoriteStationUsecase _getSingleFavoriteStationUsecase;
  final SaveFavoriteRadioStationUsecase _saveFavoriteRadioStationUsecase;
  final RemoveFavoriteRadioStationUsecase _removeFavoriteRadioStationUsecase;

  @override
  Future<void> close() {
    _radioPlayer.stop();
    return super.close();
  }

  Future<void> _onLoad(Emitter<RadioState> emit) async {
    final response = await _getSingleFavoriteStationUsecase(_station.id);
    final isFavorite = response.fold((left) => false, (right) => right != null);

    emit(state.copyWith(stationUrl: _station.url, isFavorite: isFavorite));
    await _setChannel(_station.url);

    final combinedStreams = CombineLatestStream.combine2(
      _radioPlayer.metadataStream,
      _radioPlayer.stateStream,
      (metadata, playback) => state.copyWith(
        metadata: metadata,
        isPlaying: playback,
      ),
    );

    return emit.forEach(
      combinedStreams,
      onData: (data) => state.copyWith(
        metadata: data.metadata,
        isPlaying: data.isPlaying,
      ),
    );
  }

  Future<void> _onSetChannel(
    _SetChannelRadioEvent event,
    Emitter<RadioState> emit,
  ) async =>
      _setChannel(event.url);

  Future<void> _onPlay(Emitter<RadioState> emit) async {
    await _radioPlayer.play();
    emit(state.copyWith(isPlaying: true));
  }

  Future<void> _onPause(Emitter<RadioState> emit) async {
    await _radioPlayer.pause();
    emit(state.copyWith(isPlaying: false));
  }

  Future<void> _onStop(Emitter<RadioState> emit) async {
    await _radioPlayer.stop();
    emit(state.copyWith(isPlaying: false));
  }

  Future<void> _setChannel(String url) async {
    await _radioPlayer.setChannel(
      title: 'title',
      url: url,
    );
  }

  Future<void> _onToggleFavorite(Emitter<RadioState> emit) async {
    if (state.isFavorite) {
      final response = await _removeFavoriteRadioStationUsecase(_station.id);
      response.fold(
        (left) => null,
        (right) => emit(state.copyWith(isFavorite: false)),
      );
    } else {
      final response = await _saveFavoriteRadioStationUsecase(_station);
      response.fold(
        (left) => null,
        (right) => emit(state.copyWith(isFavorite: true)),
      );
    }
  }
}
