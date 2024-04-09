import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:radio_player/radio_player.dart';
import 'package:rxdart/rxdart.dart';

part 'radio_event.dart';
part 'radio_state.dart';
part 'radio_bloc.freezed.dart';

@injectable
class RadioBloc extends Bloc<RadioEvent, RadioState> {
  RadioBloc(
    this._radioPlayer,
    @factoryParam String url,
  )   : _url = url,
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
  final String _url;

  Future<void> _onLoad(Emitter<RadioState> emit) async {
    emit(state.copyWith(stationUrl: _url));

    await _setChannel(_url);

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

  Future<void> _onPlay(Emitter<RadioState> emit) async =>
      await _radioPlayer.play();

  Future<void> _onPause(Emitter<RadioState> emit) async =>
      await _radioPlayer.pause();

  Future<void> _onStop(Emitter<RadioState> emit) async =>
      await _radioPlayer.stop();

  Future<void> _setChannel(String url) async {
    await _radioPlayer.setChannel(
      title: 'title',
      url: url,
    );
  }
}
