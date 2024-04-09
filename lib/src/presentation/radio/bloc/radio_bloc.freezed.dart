// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url) setChannel,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url)? setChannel,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url)? setChannel,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioEvent value) load,
    required TResult Function(_SetChannelRadioEvent value) setChannel,
    required TResult Function(_PlayChannelRadioEvent value) play,
    required TResult Function(_PauseChannelRadioEvent value) pause,
    required TResult Function(_StopChannelRadioEvent value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioEvent value)? load,
    TResult? Function(_SetChannelRadioEvent value)? setChannel,
    TResult? Function(_PlayChannelRadioEvent value)? play,
    TResult? Function(_PauseChannelRadioEvent value)? pause,
    TResult? Function(_StopChannelRadioEvent value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioEvent value)? load,
    TResult Function(_SetChannelRadioEvent value)? setChannel,
    TResult Function(_PlayChannelRadioEvent value)? play,
    TResult Function(_PauseChannelRadioEvent value)? pause,
    TResult Function(_StopChannelRadioEvent value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioEventCopyWith<$Res> {
  factory $RadioEventCopyWith(
          RadioEvent value, $Res Function(RadioEvent) then) =
      _$RadioEventCopyWithImpl<$Res, RadioEvent>;
}

/// @nodoc
class _$RadioEventCopyWithImpl<$Res, $Val extends RadioEvent>
    implements $RadioEventCopyWith<$Res> {
  _$RadioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRadioEventImplCopyWith<$Res> {
  factory _$$LoadRadioEventImplCopyWith(_$LoadRadioEventImpl value,
          $Res Function(_$LoadRadioEventImpl) then) =
      __$$LoadRadioEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRadioEventImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$LoadRadioEventImpl>
    implements _$$LoadRadioEventImplCopyWith<$Res> {
  __$$LoadRadioEventImplCopyWithImpl(
      _$LoadRadioEventImpl _value, $Res Function(_$LoadRadioEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRadioEventImpl
    with DiagnosticableTreeMixin
    implements _LoadRadioEvent {
  const _$LoadRadioEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioEvent.load'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRadioEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url) setChannel,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url)? setChannel,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url)? setChannel,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioEvent value) load,
    required TResult Function(_SetChannelRadioEvent value) setChannel,
    required TResult Function(_PlayChannelRadioEvent value) play,
    required TResult Function(_PauseChannelRadioEvent value) pause,
    required TResult Function(_StopChannelRadioEvent value) stop,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioEvent value)? load,
    TResult? Function(_SetChannelRadioEvent value)? setChannel,
    TResult? Function(_PlayChannelRadioEvent value)? play,
    TResult? Function(_PauseChannelRadioEvent value)? pause,
    TResult? Function(_StopChannelRadioEvent value)? stop,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioEvent value)? load,
    TResult Function(_SetChannelRadioEvent value)? setChannel,
    TResult Function(_PlayChannelRadioEvent value)? play,
    TResult Function(_PauseChannelRadioEvent value)? pause,
    TResult Function(_StopChannelRadioEvent value)? stop,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadRadioEvent implements RadioEvent {
  const factory _LoadRadioEvent() = _$LoadRadioEventImpl;
}

/// @nodoc
abstract class _$$SetChannelRadioEventImplCopyWith<$Res> {
  factory _$$SetChannelRadioEventImplCopyWith(_$SetChannelRadioEventImpl value,
          $Res Function(_$SetChannelRadioEventImpl) then) =
      __$$SetChannelRadioEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$SetChannelRadioEventImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$SetChannelRadioEventImpl>
    implements _$$SetChannelRadioEventImplCopyWith<$Res> {
  __$$SetChannelRadioEventImplCopyWithImpl(_$SetChannelRadioEventImpl _value,
      $Res Function(_$SetChannelRadioEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$SetChannelRadioEventImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetChannelRadioEventImpl
    with DiagnosticableTreeMixin
    implements _SetChannelRadioEvent {
  const _$SetChannelRadioEventImpl(this.url);

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioEvent.setChannel(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioEvent.setChannel'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetChannelRadioEventImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetChannelRadioEventImplCopyWith<_$SetChannelRadioEventImpl>
      get copyWith =>
          __$$SetChannelRadioEventImplCopyWithImpl<_$SetChannelRadioEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url) setChannel,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return setChannel(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url)? setChannel,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return setChannel?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url)? setChannel,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (setChannel != null) {
      return setChannel(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioEvent value) load,
    required TResult Function(_SetChannelRadioEvent value) setChannel,
    required TResult Function(_PlayChannelRadioEvent value) play,
    required TResult Function(_PauseChannelRadioEvent value) pause,
    required TResult Function(_StopChannelRadioEvent value) stop,
  }) {
    return setChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioEvent value)? load,
    TResult? Function(_SetChannelRadioEvent value)? setChannel,
    TResult? Function(_PlayChannelRadioEvent value)? play,
    TResult? Function(_PauseChannelRadioEvent value)? pause,
    TResult? Function(_StopChannelRadioEvent value)? stop,
  }) {
    return setChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioEvent value)? load,
    TResult Function(_SetChannelRadioEvent value)? setChannel,
    TResult Function(_PlayChannelRadioEvent value)? play,
    TResult Function(_PauseChannelRadioEvent value)? pause,
    TResult Function(_StopChannelRadioEvent value)? stop,
    required TResult orElse(),
  }) {
    if (setChannel != null) {
      return setChannel(this);
    }
    return orElse();
  }
}

abstract class _SetChannelRadioEvent implements RadioEvent {
  const factory _SetChannelRadioEvent(final String url) =
      _$SetChannelRadioEventImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$SetChannelRadioEventImplCopyWith<_$SetChannelRadioEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayChannelRadioEventImplCopyWith<$Res> {
  factory _$$PlayChannelRadioEventImplCopyWith(
          _$PlayChannelRadioEventImpl value,
          $Res Function(_$PlayChannelRadioEventImpl) then) =
      __$$PlayChannelRadioEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayChannelRadioEventImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$PlayChannelRadioEventImpl>
    implements _$$PlayChannelRadioEventImplCopyWith<$Res> {
  __$$PlayChannelRadioEventImplCopyWithImpl(_$PlayChannelRadioEventImpl _value,
      $Res Function(_$PlayChannelRadioEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayChannelRadioEventImpl
    with DiagnosticableTreeMixin
    implements _PlayChannelRadioEvent {
  const _$PlayChannelRadioEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioEvent.play()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioEvent.play'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayChannelRadioEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url) setChannel,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url)? setChannel,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url)? setChannel,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioEvent value) load,
    required TResult Function(_SetChannelRadioEvent value) setChannel,
    required TResult Function(_PlayChannelRadioEvent value) play,
    required TResult Function(_PauseChannelRadioEvent value) pause,
    required TResult Function(_StopChannelRadioEvent value) stop,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioEvent value)? load,
    TResult? Function(_SetChannelRadioEvent value)? setChannel,
    TResult? Function(_PlayChannelRadioEvent value)? play,
    TResult? Function(_PauseChannelRadioEvent value)? pause,
    TResult? Function(_StopChannelRadioEvent value)? stop,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioEvent value)? load,
    TResult Function(_SetChannelRadioEvent value)? setChannel,
    TResult Function(_PlayChannelRadioEvent value)? play,
    TResult Function(_PauseChannelRadioEvent value)? pause,
    TResult Function(_StopChannelRadioEvent value)? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _PlayChannelRadioEvent implements RadioEvent {
  const factory _PlayChannelRadioEvent() = _$PlayChannelRadioEventImpl;
}

/// @nodoc
abstract class _$$PauseChannelRadioEventImplCopyWith<$Res> {
  factory _$$PauseChannelRadioEventImplCopyWith(
          _$PauseChannelRadioEventImpl value,
          $Res Function(_$PauseChannelRadioEventImpl) then) =
      __$$PauseChannelRadioEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseChannelRadioEventImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$PauseChannelRadioEventImpl>
    implements _$$PauseChannelRadioEventImplCopyWith<$Res> {
  __$$PauseChannelRadioEventImplCopyWithImpl(
      _$PauseChannelRadioEventImpl _value,
      $Res Function(_$PauseChannelRadioEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseChannelRadioEventImpl
    with DiagnosticableTreeMixin
    implements _PauseChannelRadioEvent {
  const _$PauseChannelRadioEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioEvent.pause()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioEvent.pause'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseChannelRadioEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url) setChannel,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url)? setChannel,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url)? setChannel,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioEvent value) load,
    required TResult Function(_SetChannelRadioEvent value) setChannel,
    required TResult Function(_PlayChannelRadioEvent value) play,
    required TResult Function(_PauseChannelRadioEvent value) pause,
    required TResult Function(_StopChannelRadioEvent value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioEvent value)? load,
    TResult? Function(_SetChannelRadioEvent value)? setChannel,
    TResult? Function(_PlayChannelRadioEvent value)? play,
    TResult? Function(_PauseChannelRadioEvent value)? pause,
    TResult? Function(_StopChannelRadioEvent value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioEvent value)? load,
    TResult Function(_SetChannelRadioEvent value)? setChannel,
    TResult Function(_PlayChannelRadioEvent value)? play,
    TResult Function(_PauseChannelRadioEvent value)? pause,
    TResult Function(_StopChannelRadioEvent value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _PauseChannelRadioEvent implements RadioEvent {
  const factory _PauseChannelRadioEvent() = _$PauseChannelRadioEventImpl;
}

/// @nodoc
abstract class _$$StopChannelRadioEventImplCopyWith<$Res> {
  factory _$$StopChannelRadioEventImplCopyWith(
          _$StopChannelRadioEventImpl value,
          $Res Function(_$StopChannelRadioEventImpl) then) =
      __$$StopChannelRadioEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopChannelRadioEventImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$StopChannelRadioEventImpl>
    implements _$$StopChannelRadioEventImplCopyWith<$Res> {
  __$$StopChannelRadioEventImplCopyWithImpl(_$StopChannelRadioEventImpl _value,
      $Res Function(_$StopChannelRadioEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopChannelRadioEventImpl
    with DiagnosticableTreeMixin
    implements _StopChannelRadioEvent {
  const _$StopChannelRadioEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioEvent.stop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioEvent.stop'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopChannelRadioEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url) setChannel,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url)? setChannel,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url)? setChannel,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioEvent value) load,
    required TResult Function(_SetChannelRadioEvent value) setChannel,
    required TResult Function(_PlayChannelRadioEvent value) play,
    required TResult Function(_PauseChannelRadioEvent value) pause,
    required TResult Function(_StopChannelRadioEvent value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioEvent value)? load,
    TResult? Function(_SetChannelRadioEvent value)? setChannel,
    TResult? Function(_PlayChannelRadioEvent value)? play,
    TResult? Function(_PauseChannelRadioEvent value)? pause,
    TResult? Function(_StopChannelRadioEvent value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioEvent value)? load,
    TResult Function(_SetChannelRadioEvent value)? setChannel,
    TResult Function(_PlayChannelRadioEvent value)? play,
    TResult Function(_PauseChannelRadioEvent value)? pause,
    TResult Function(_StopChannelRadioEvent value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _StopChannelRadioEvent implements RadioEvent {
  const factory _StopChannelRadioEvent() = _$StopChannelRadioEventImpl;
}

/// @nodoc
mixin _$RadioState {
  String? get stationUrl => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  List<String> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioStateCopyWith<RadioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStateCopyWith<$Res> {
  factory $RadioStateCopyWith(
          RadioState value, $Res Function(RadioState) then) =
      _$RadioStateCopyWithImpl<$Res, RadioState>;
  @useResult
  $Res call({String? stationUrl, bool isPlaying, List<String> metadata});
}

/// @nodoc
class _$RadioStateCopyWithImpl<$Res, $Val extends RadioState>
    implements $RadioStateCopyWith<$Res> {
  _$RadioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationUrl = freezed,
    Object? isPlaying = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      stationUrl: freezed == stationUrl
          ? _value.stationUrl
          : stationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioStateImplCopyWith<$Res>
    implements $RadioStateCopyWith<$Res> {
  factory _$$RadioStateImplCopyWith(
          _$RadioStateImpl value, $Res Function(_$RadioStateImpl) then) =
      __$$RadioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? stationUrl, bool isPlaying, List<String> metadata});
}

/// @nodoc
class __$$RadioStateImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$RadioStateImpl>
    implements _$$RadioStateImplCopyWith<$Res> {
  __$$RadioStateImplCopyWithImpl(
      _$RadioStateImpl _value, $Res Function(_$RadioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationUrl = freezed,
    Object? isPlaying = null,
    Object? metadata = null,
  }) {
    return _then(_$RadioStateImpl(
      stationUrl: freezed == stationUrl
          ? _value.stationUrl
          : stationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RadioStateImpl with DiagnosticableTreeMixin implements _RadioState {
  const _$RadioStateImpl(
      {this.stationUrl,
      this.isPlaying = false,
      final List<String> metadata = const []})
      : _metadata = metadata;

  @override
  final String? stationUrl;
  @override
  @JsonKey()
  final bool isPlaying;
  final List<String> _metadata;
  @override
  @JsonKey()
  List<String> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioState(stationUrl: $stationUrl, isPlaying: $isPlaying, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioState'))
      ..add(DiagnosticsProperty('stationUrl', stationUrl))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioStateImpl &&
            (identical(other.stationUrl, stationUrl) ||
                other.stationUrl == stationUrl) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stationUrl, isPlaying,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioStateImplCopyWith<_$RadioStateImpl> get copyWith =>
      __$$RadioStateImplCopyWithImpl<_$RadioStateImpl>(this, _$identity);
}

abstract class _RadioState implements RadioState {
  const factory _RadioState(
      {final String? stationUrl,
      final bool isPlaying,
      final List<String> metadata}) = _$RadioStateImpl;

  @override
  String? get stationUrl;
  @override
  bool get isPlaying;
  @override
  List<String> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RadioStateImplCopyWith<_$RadioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
