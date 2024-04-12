// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(RadioStation station) openStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(RadioStation station)? openStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(RadioStation station)? openStation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavoritesEvent value) load,
    required TResult Function(_OpenStationFavoritesEvent value) openStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavoritesEvent value)? load,
    TResult? Function(_OpenStationFavoritesEvent value)? openStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavoritesEvent value)? load,
    TResult Function(_OpenStationFavoritesEvent value)? openStation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadFavoritesEventImplCopyWith<$Res> {
  factory _$$LoadFavoritesEventImplCopyWith(_$LoadFavoritesEventImpl value,
          $Res Function(_$LoadFavoritesEventImpl) then) =
      __$$LoadFavoritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesEventImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$LoadFavoritesEventImpl>
    implements _$$LoadFavoritesEventImplCopyWith<$Res> {
  __$$LoadFavoritesEventImplCopyWithImpl(_$LoadFavoritesEventImpl _value,
      $Res Function(_$LoadFavoritesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFavoritesEventImpl implements _LoadFavoritesEvent {
  const _$LoadFavoritesEventImpl();

  @override
  String toString() {
    return 'FavoritesEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(RadioStation station) openStation,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(RadioStation station)? openStation,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(RadioStation station)? openStation,
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
    required TResult Function(_LoadFavoritesEvent value) load,
    required TResult Function(_OpenStationFavoritesEvent value) openStation,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavoritesEvent value)? load,
    TResult? Function(_OpenStationFavoritesEvent value)? openStation,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavoritesEvent value)? load,
    TResult Function(_OpenStationFavoritesEvent value)? openStation,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadFavoritesEvent implements FavoritesEvent {
  const factory _LoadFavoritesEvent() = _$LoadFavoritesEventImpl;
}

/// @nodoc
abstract class _$$OpenStationFavoritesEventImplCopyWith<$Res> {
  factory _$$OpenStationFavoritesEventImplCopyWith(
          _$OpenStationFavoritesEventImpl value,
          $Res Function(_$OpenStationFavoritesEventImpl) then) =
      __$$OpenStationFavoritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RadioStation station});

  $RadioStationCopyWith<$Res> get station;
}

/// @nodoc
class __$$OpenStationFavoritesEventImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$OpenStationFavoritesEventImpl>
    implements _$$OpenStationFavoritesEventImplCopyWith<$Res> {
  __$$OpenStationFavoritesEventImplCopyWithImpl(
      _$OpenStationFavoritesEventImpl _value,
      $Res Function(_$OpenStationFavoritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
  }) {
    return _then(_$OpenStationFavoritesEventImpl(
      null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as RadioStation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RadioStationCopyWith<$Res> get station {
    return $RadioStationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value));
    });
  }
}

/// @nodoc

class _$OpenStationFavoritesEventImpl implements _OpenStationFavoritesEvent {
  const _$OpenStationFavoritesEventImpl(this.station);

  @override
  final RadioStation station;

  @override
  String toString() {
    return 'FavoritesEvent.openStation(station: $station)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenStationFavoritesEventImpl &&
            (identical(other.station, station) || other.station == station));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenStationFavoritesEventImplCopyWith<_$OpenStationFavoritesEventImpl>
      get copyWith => __$$OpenStationFavoritesEventImplCopyWithImpl<
          _$OpenStationFavoritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(RadioStation station) openStation,
  }) {
    return openStation(station);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(RadioStation station)? openStation,
  }) {
    return openStation?.call(station);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(RadioStation station)? openStation,
    required TResult orElse(),
  }) {
    if (openStation != null) {
      return openStation(station);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavoritesEvent value) load,
    required TResult Function(_OpenStationFavoritesEvent value) openStation,
  }) {
    return openStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavoritesEvent value)? load,
    TResult? Function(_OpenStationFavoritesEvent value)? openStation,
  }) {
    return openStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavoritesEvent value)? load,
    TResult Function(_OpenStationFavoritesEvent value)? openStation,
    required TResult orElse(),
  }) {
    if (openStation != null) {
      return openStation(this);
    }
    return orElse();
  }
}

abstract class _OpenStationFavoritesEvent implements FavoritesEvent {
  const factory _OpenStationFavoritesEvent(final RadioStation station) =
      _$OpenStationFavoritesEventImpl;

  RadioStation get station;
  @JsonKey(ignore: true)
  _$$OpenStationFavoritesEventImplCopyWith<_$OpenStationFavoritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RadioStation> get stations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({bool isLoading, List<RadioStation> stations});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<RadioStation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesStateImplCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$FavoritesStateImplCopyWith(_$FavoritesStateImpl value,
          $Res Function(_$FavoritesStateImpl) then) =
      __$$FavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<RadioStation> stations});
}

/// @nodoc
class __$$FavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateImpl>
    implements _$$FavoritesStateImplCopyWith<$Res> {
  __$$FavoritesStateImplCopyWithImpl(
      _$FavoritesStateImpl _value, $Res Function(_$FavoritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? stations = null,
  }) {
    return _then(_$FavoritesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<RadioStation>,
    ));
  }
}

/// @nodoc

class _$FavoritesStateImpl implements _FavoritesState {
  const _$FavoritesStateImpl(
      {this.isLoading = false, final List<RadioStation> stations = const []})
      : _stations = stations;

  @override
  @JsonKey()
  final bool isLoading;
  final List<RadioStation> _stations;
  @override
  @JsonKey()
  List<RadioStation> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'FavoritesState(isLoading: $isLoading, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      __$$FavoritesStateImplCopyWithImpl<_$FavoritesStateImpl>(
          this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {final bool isLoading,
      final List<RadioStation> stations}) = _$FavoritesStateImpl;

  @override
  bool get isLoading;
  @override
  List<RadioStation> get stations;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
