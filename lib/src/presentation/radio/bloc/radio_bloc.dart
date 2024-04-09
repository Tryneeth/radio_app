import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
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
  )   : _station = station,
        super(const RadioState()) {
    on<RadioEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        setChannel: (e) => _onSetChannel(e, emit),
        play: (_) => _onPlay(emit),
        pause: (_) => _onPause(emit),
        stop: (_) => _onStop(emit),
      ),
    );

    add(const RadioEvent.load());
  }

  final RadioPlayer _radioPlayer;
  final RadioStation _station;

  @override
  Future<void> close() {
    _radioPlayer.stop();
    return super.close();
  }

  Future<void> _onLoad(Emitter<RadioState> emit) async {
    emit(state.copyWith(stationUrl: _station.url));
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
}
