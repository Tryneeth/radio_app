// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_browser_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioBrowserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(RadioStation station) openStation,
    required TResult Function(String countryCode) changeCountry,
    required TResult Function() openFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(RadioStation station)? openStation,
    TResult? Function(String countryCode)? changeCountry,
    TResult? Function()? openFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(RadioStation station)? openStation,
    TResult Function(String countryCode)? changeCountry,
    TResult Function()? openFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioBrowserEvent value) load,
    required TResult Function(_LoadMoreRadioBrowserEvent value) loadMore,
    required TResult Function(_OpenStationRadioBrowserEvent value) openStation,
    required TResult Function(_ChangeCountryRadioBrowserEvent value)
        changeCountry,
    required TResult Function(_OpenFavoritesRadioBrowserEvent value)
        openFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioBrowserEvent value)? load,
    TResult? Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult? Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult? Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult? Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioBrowserEvent value)? load,
    TResult Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioBrowserEventCopyWith<$Res> {
  factory $RadioBrowserEventCopyWith(
          RadioBrowserEvent value, $Res Function(RadioBrowserEvent) then) =
      _$RadioBrowserEventCopyWithImpl<$Res, RadioBrowserEvent>;
}

/// @nodoc
class _$RadioBrowserEventCopyWithImpl<$Res, $Val extends RadioBrowserEvent>
    implements $RadioBrowserEventCopyWith<$Res> {
  _$RadioBrowserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRadioBrowserEventImplCopyWith<$Res> {
  factory _$$LoadRadioBrowserEventImplCopyWith(
          _$LoadRadioBrowserEventImpl value,
          $Res Function(_$LoadRadioBrowserEventImpl) then) =
      __$$LoadRadioBrowserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRadioBrowserEventImplCopyWithImpl<$Res>
    extends _$RadioBrowserEventCopyWithImpl<$Res, _$LoadRadioBrowserEventImpl>
    implements _$$LoadRadioBrowserEventImplCopyWith<$Res> {
  __$$LoadRadioBrowserEventImplCopyWithImpl(_$LoadRadioBrowserEventImpl _value,
      $Res Function(_$LoadRadioBrowserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRadioBrowserEventImpl
    with DiagnosticableTreeMixin
    implements _LoadRadioBrowserEvent {
  const _$LoadRadioBrowserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioBrowserEvent.load'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRadioBrowserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(RadioStation station) openStation,
    required TResult Function(String countryCode) changeCountry,
    required TResult Function() openFavorites,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(RadioStation station)? openStation,
    TResult? Function(String countryCode)? changeCountry,
    TResult? Function()? openFavorites,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(RadioStation station)? openStation,
    TResult Function(String countryCode)? changeCountry,
    TResult Function()? openFavorites,
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
    required TResult Function(_LoadRadioBrowserEvent value) load,
    required TResult Function(_LoadMoreRadioBrowserEvent value) loadMore,
    required TResult Function(_OpenStationRadioBrowserEvent value) openStation,
    required TResult Function(_ChangeCountryRadioBrowserEvent value)
        changeCountry,
    required TResult Function(_OpenFavoritesRadioBrowserEvent value)
        openFavorites,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioBrowserEvent value)? load,
    TResult? Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult? Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult? Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult? Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioBrowserEvent value)? load,
    TResult Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadRadioBrowserEvent implements RadioBrowserEvent {
  const factory _LoadRadioBrowserEvent() = _$LoadRadioBrowserEventImpl;
}

/// @nodoc
abstract class _$$LoadMoreRadioBrowserEventImplCopyWith<$Res> {
  factory _$$LoadMoreRadioBrowserEventImplCopyWith(
          _$LoadMoreRadioBrowserEventImpl value,
          $Res Function(_$LoadMoreRadioBrowserEventImpl) then) =
      __$$LoadMoreRadioBrowserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreRadioBrowserEventImplCopyWithImpl<$Res>
    extends _$RadioBrowserEventCopyWithImpl<$Res,
        _$LoadMoreRadioBrowserEventImpl>
    implements _$$LoadMoreRadioBrowserEventImplCopyWith<$Res> {
  __$$LoadMoreRadioBrowserEventImplCopyWithImpl(
      _$LoadMoreRadioBrowserEventImpl _value,
      $Res Function(_$LoadMoreRadioBrowserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreRadioBrowserEventImpl
    with DiagnosticableTreeMixin
    implements _LoadMoreRadioBrowserEvent {
  const _$LoadMoreRadioBrowserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserEvent.loadMore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioBrowserEvent.loadMore'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreRadioBrowserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(RadioStation station) openStation,
    required TResult Function(String countryCode) changeCountry,
    required TResult Function() openFavorites,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(RadioStation station)? openStation,
    TResult? Function(String countryCode)? changeCountry,
    TResult? Function()? openFavorites,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(RadioStation station)? openStation,
    TResult Function(String countryCode)? changeCountry,
    TResult Function()? openFavorites,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioBrowserEvent value) load,
    required TResult Function(_LoadMoreRadioBrowserEvent value) loadMore,
    required TResult Function(_OpenStationRadioBrowserEvent value) openStation,
    required TResult Function(_ChangeCountryRadioBrowserEvent value)
        changeCountry,
    required TResult Function(_OpenFavoritesRadioBrowserEvent value)
        openFavorites,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioBrowserEvent value)? load,
    TResult? Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult? Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult? Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult? Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioBrowserEvent value)? load,
    TResult Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreRadioBrowserEvent implements RadioBrowserEvent {
  const factory _LoadMoreRadioBrowserEvent() = _$LoadMoreRadioBrowserEventImpl;
}

/// @nodoc
abstract class _$$OpenStationRadioBrowserEventImplCopyWith<$Res> {
  factory _$$OpenStationRadioBrowserEventImplCopyWith(
          _$OpenStationRadioBrowserEventImpl value,
          $Res Function(_$OpenStationRadioBrowserEventImpl) then) =
      __$$OpenStationRadioBrowserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RadioStation station});

  $RadioStationCopyWith<$Res> get station;
}

/// @nodoc
class __$$OpenStationRadioBrowserEventImplCopyWithImpl<$Res>
    extends _$RadioBrowserEventCopyWithImpl<$Res,
        _$OpenStationRadioBrowserEventImpl>
    implements _$$OpenStationRadioBrowserEventImplCopyWith<$Res> {
  __$$OpenStationRadioBrowserEventImplCopyWithImpl(
      _$OpenStationRadioBrowserEventImpl _value,
      $Res Function(_$OpenStationRadioBrowserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
  }) {
    return _then(_$OpenStationRadioBrowserEventImpl(
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

class _$OpenStationRadioBrowserEventImpl
    with DiagnosticableTreeMixin
    implements _OpenStationRadioBrowserEvent {
  const _$OpenStationRadioBrowserEventImpl(this.station);

  @override
  final RadioStation station;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserEvent.openStation(station: $station)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioBrowserEvent.openStation'))
      ..add(DiagnosticsProperty('station', station));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenStationRadioBrowserEventImpl &&
            (identical(other.station, station) || other.station == station));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenStationRadioBrowserEventImplCopyWith<
          _$OpenStationRadioBrowserEventImpl>
      get copyWith => __$$OpenStationRadioBrowserEventImplCopyWithImpl<
          _$OpenStationRadioBrowserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(RadioStation station) openStation,
    required TResult Function(String countryCode) changeCountry,
    required TResult Function() openFavorites,
  }) {
    return openStation(station);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(RadioStation station)? openStation,
    TResult? Function(String countryCode)? changeCountry,
    TResult? Function()? openFavorites,
  }) {
    return openStation?.call(station);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(RadioStation station)? openStation,
    TResult Function(String countryCode)? changeCountry,
    TResult Function()? openFavorites,
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
    required TResult Function(_LoadRadioBrowserEvent value) load,
    required TResult Function(_LoadMoreRadioBrowserEvent value) loadMore,
    required TResult Function(_OpenStationRadioBrowserEvent value) openStation,
    required TResult Function(_ChangeCountryRadioBrowserEvent value)
        changeCountry,
    required TResult Function(_OpenFavoritesRadioBrowserEvent value)
        openFavorites,
  }) {
    return openStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioBrowserEvent value)? load,
    TResult? Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult? Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult? Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult? Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
  }) {
    return openStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioBrowserEvent value)? load,
    TResult Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
    required TResult orElse(),
  }) {
    if (openStation != null) {
      return openStation(this);
    }
    return orElse();
  }
}

abstract class _OpenStationRadioBrowserEvent implements RadioBrowserEvent {
  const factory _OpenStationRadioBrowserEvent(final RadioStation station) =
      _$OpenStationRadioBrowserEventImpl;

  RadioStation get station;
  @JsonKey(ignore: true)
  _$$OpenStationRadioBrowserEventImplCopyWith<
          _$OpenStationRadioBrowserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCountryRadioBrowserEventImplCopyWith<$Res> {
  factory _$$ChangeCountryRadioBrowserEventImplCopyWith(
          _$ChangeCountryRadioBrowserEventImpl value,
          $Res Function(_$ChangeCountryRadioBrowserEventImpl) then) =
      __$$ChangeCountryRadioBrowserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryCode});
}

/// @nodoc
class __$$ChangeCountryRadioBrowserEventImplCopyWithImpl<$Res>
    extends _$RadioBrowserEventCopyWithImpl<$Res,
        _$ChangeCountryRadioBrowserEventImpl>
    implements _$$ChangeCountryRadioBrowserEventImplCopyWith<$Res> {
  __$$ChangeCountryRadioBrowserEventImplCopyWithImpl(
      _$ChangeCountryRadioBrowserEventImpl _value,
      $Res Function(_$ChangeCountryRadioBrowserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_$ChangeCountryRadioBrowserEventImpl(
      null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCountryRadioBrowserEventImpl
    with DiagnosticableTreeMixin
    implements _ChangeCountryRadioBrowserEvent {
  const _$ChangeCountryRadioBrowserEventImpl(this.countryCode);

  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserEvent.changeCountry(countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioBrowserEvent.changeCountry'))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCountryRadioBrowserEventImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCountryRadioBrowserEventImplCopyWith<
          _$ChangeCountryRadioBrowserEventImpl>
      get copyWith => __$$ChangeCountryRadioBrowserEventImplCopyWithImpl<
          _$ChangeCountryRadioBrowserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(RadioStation station) openStation,
    required TResult Function(String countryCode) changeCountry,
    required TResult Function() openFavorites,
  }) {
    return changeCountry(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(RadioStation station)? openStation,
    TResult? Function(String countryCode)? changeCountry,
    TResult? Function()? openFavorites,
  }) {
    return changeCountry?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(RadioStation station)? openStation,
    TResult Function(String countryCode)? changeCountry,
    TResult Function()? openFavorites,
    required TResult orElse(),
  }) {
    if (changeCountry != null) {
      return changeCountry(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioBrowserEvent value) load,
    required TResult Function(_LoadMoreRadioBrowserEvent value) loadMore,
    required TResult Function(_OpenStationRadioBrowserEvent value) openStation,
    required TResult Function(_ChangeCountryRadioBrowserEvent value)
        changeCountry,
    required TResult Function(_OpenFavoritesRadioBrowserEvent value)
        openFavorites,
  }) {
    return changeCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioBrowserEvent value)? load,
    TResult? Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult? Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult? Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult? Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
  }) {
    return changeCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioBrowserEvent value)? load,
    TResult Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
    required TResult orElse(),
  }) {
    if (changeCountry != null) {
      return changeCountry(this);
    }
    return orElse();
  }
}

abstract class _ChangeCountryRadioBrowserEvent implements RadioBrowserEvent {
  const factory _ChangeCountryRadioBrowserEvent(final String countryCode) =
      _$ChangeCountryRadioBrowserEventImpl;

  String get countryCode;
  @JsonKey(ignore: true)
  _$$ChangeCountryRadioBrowserEventImplCopyWith<
          _$ChangeCountryRadioBrowserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenFavoritesRadioBrowserEventImplCopyWith<$Res> {
  factory _$$OpenFavoritesRadioBrowserEventImplCopyWith(
          _$OpenFavoritesRadioBrowserEventImpl value,
          $Res Function(_$OpenFavoritesRadioBrowserEventImpl) then) =
      __$$OpenFavoritesRadioBrowserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenFavoritesRadioBrowserEventImplCopyWithImpl<$Res>
    extends _$RadioBrowserEventCopyWithImpl<$Res,
        _$OpenFavoritesRadioBrowserEventImpl>
    implements _$$OpenFavoritesRadioBrowserEventImplCopyWith<$Res> {
  __$$OpenFavoritesRadioBrowserEventImplCopyWithImpl(
      _$OpenFavoritesRadioBrowserEventImpl _value,
      $Res Function(_$OpenFavoritesRadioBrowserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenFavoritesRadioBrowserEventImpl
    with DiagnosticableTreeMixin
    implements _OpenFavoritesRadioBrowserEvent {
  const _$OpenFavoritesRadioBrowserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserEvent.openFavorites()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RadioBrowserEvent.openFavorites'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenFavoritesRadioBrowserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(RadioStation station) openStation,
    required TResult Function(String countryCode) changeCountry,
    required TResult Function() openFavorites,
  }) {
    return openFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(RadioStation station)? openStation,
    TResult? Function(String countryCode)? changeCountry,
    TResult? Function()? openFavorites,
  }) {
    return openFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(RadioStation station)? openStation,
    TResult Function(String countryCode)? changeCountry,
    TResult Function()? openFavorites,
    required TResult orElse(),
  }) {
    if (openFavorites != null) {
      return openFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRadioBrowserEvent value) load,
    required TResult Function(_LoadMoreRadioBrowserEvent value) loadMore,
    required TResult Function(_OpenStationRadioBrowserEvent value) openStation,
    required TResult Function(_ChangeCountryRadioBrowserEvent value)
        changeCountry,
    required TResult Function(_OpenFavoritesRadioBrowserEvent value)
        openFavorites,
  }) {
    return openFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRadioBrowserEvent value)? load,
    TResult? Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult? Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult? Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult? Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
  }) {
    return openFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRadioBrowserEvent value)? load,
    TResult Function(_LoadMoreRadioBrowserEvent value)? loadMore,
    TResult Function(_OpenStationRadioBrowserEvent value)? openStation,
    TResult Function(_ChangeCountryRadioBrowserEvent value)? changeCountry,
    TResult Function(_OpenFavoritesRadioBrowserEvent value)? openFavorites,
    required TResult orElse(),
  }) {
    if (openFavorites != null) {
      return openFavorites(this);
    }
    return orElse();
  }
}

abstract class _OpenFavoritesRadioBrowserEvent implements RadioBrowserEvent {
  const factory _OpenFavoritesRadioBrowserEvent() =
      _$OpenFavoritesRadioBrowserEventImpl;
}

/// @nodoc
mixin _$RadioBrowserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)
        content,
    required TResult Function(Exception? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult? Function(Exception? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRadioBrowserState value) initial,
    required TResult Function(_LoadingRadioBrowserState value) loading,
    required TResult Function(_ContentRadioBrowserState value) content,
    required TResult Function(_ErrorRadioBrowserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRadioBrowserState value)? initial,
    TResult? Function(_LoadingRadioBrowserState value)? loading,
    TResult? Function(_ContentRadioBrowserState value)? content,
    TResult? Function(_ErrorRadioBrowserState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRadioBrowserState value)? initial,
    TResult Function(_LoadingRadioBrowserState value)? loading,
    TResult Function(_ContentRadioBrowserState value)? content,
    TResult Function(_ErrorRadioBrowserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioBrowserStateCopyWith<$Res> {
  factory $RadioBrowserStateCopyWith(
          RadioBrowserState value, $Res Function(RadioBrowserState) then) =
      _$RadioBrowserStateCopyWithImpl<$Res, RadioBrowserState>;
}

/// @nodoc
class _$RadioBrowserStateCopyWithImpl<$Res, $Val extends RadioBrowserState>
    implements $RadioBrowserStateCopyWith<$Res> {
  _$RadioBrowserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialRadioBrowserStateImplCopyWith<$Res> {
  factory _$$InitialRadioBrowserStateImplCopyWith(
          _$InitialRadioBrowserStateImpl value,
          $Res Function(_$InitialRadioBrowserStateImpl) then) =
      __$$InitialRadioBrowserStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialRadioBrowserStateImplCopyWithImpl<$Res>
    extends _$RadioBrowserStateCopyWithImpl<$Res,
        _$InitialRadioBrowserStateImpl>
    implements _$$InitialRadioBrowserStateImplCopyWith<$Res> {
  __$$InitialRadioBrowserStateImplCopyWithImpl(
      _$InitialRadioBrowserStateImpl _value,
      $Res Function(_$InitialRadioBrowserStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialRadioBrowserStateImpl
    with DiagnosticableTreeMixin
    implements _InitialRadioBrowserState {
  const _$InitialRadioBrowserStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioBrowserState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialRadioBrowserStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)
        content,
    required TResult Function(Exception? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult? Function(Exception? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRadioBrowserState value) initial,
    required TResult Function(_LoadingRadioBrowserState value) loading,
    required TResult Function(_ContentRadioBrowserState value) content,
    required TResult Function(_ErrorRadioBrowserState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRadioBrowserState value)? initial,
    TResult? Function(_LoadingRadioBrowserState value)? loading,
    TResult? Function(_ContentRadioBrowserState value)? content,
    TResult? Function(_ErrorRadioBrowserState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRadioBrowserState value)? initial,
    TResult Function(_LoadingRadioBrowserState value)? loading,
    TResult Function(_ContentRadioBrowserState value)? content,
    TResult Function(_ErrorRadioBrowserState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialRadioBrowserState implements RadioBrowserState {
  const factory _InitialRadioBrowserState() = _$InitialRadioBrowserStateImpl;
}

/// @nodoc
abstract class _$$LoadingRadioBrowserStateImplCopyWith<$Res> {
  factory _$$LoadingRadioBrowserStateImplCopyWith(
          _$LoadingRadioBrowserStateImpl value,
          $Res Function(_$LoadingRadioBrowserStateImpl) then) =
      __$$LoadingRadioBrowserStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRadioBrowserStateImplCopyWithImpl<$Res>
    extends _$RadioBrowserStateCopyWithImpl<$Res,
        _$LoadingRadioBrowserStateImpl>
    implements _$$LoadingRadioBrowserStateImplCopyWith<$Res> {
  __$$LoadingRadioBrowserStateImplCopyWithImpl(
      _$LoadingRadioBrowserStateImpl _value,
      $Res Function(_$LoadingRadioBrowserStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRadioBrowserStateImpl
    with DiagnosticableTreeMixin
    implements _LoadingRadioBrowserState {
  const _$LoadingRadioBrowserStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RadioBrowserState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingRadioBrowserStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)
        content,
    required TResult Function(Exception? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult? Function(Exception? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRadioBrowserState value) initial,
    required TResult Function(_LoadingRadioBrowserState value) loading,
    required TResult Function(_ContentRadioBrowserState value) content,
    required TResult Function(_ErrorRadioBrowserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRadioBrowserState value)? initial,
    TResult? Function(_LoadingRadioBrowserState value)? loading,
    TResult? Function(_ContentRadioBrowserState value)? content,
    TResult? Function(_ErrorRadioBrowserState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRadioBrowserState value)? initial,
    TResult Function(_LoadingRadioBrowserState value)? loading,
    TResult Function(_ContentRadioBrowserState value)? content,
    TResult Function(_ErrorRadioBrowserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingRadioBrowserState implements RadioBrowserState {
  const factory _LoadingRadioBrowserState() = _$LoadingRadioBrowserStateImpl;
}

/// @nodoc
abstract class _$$ContentRadioBrowserStateImplCopyWith<$Res> {
  factory _$$ContentRadioBrowserStateImplCopyWith(
          _$ContentRadioBrowserStateImpl value,
          $Res Function(_$ContentRadioBrowserStateImpl) then) =
      __$$ContentRadioBrowserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoadingMore,
      List<RadioStation> stations,
      int offset,
      int limit,
      bool isEndOfData,
      String? countryCode,
      String? countryName});
}

/// @nodoc
class __$$ContentRadioBrowserStateImplCopyWithImpl<$Res>
    extends _$RadioBrowserStateCopyWithImpl<$Res,
        _$ContentRadioBrowserStateImpl>
    implements _$$ContentRadioBrowserStateImplCopyWith<$Res> {
  __$$ContentRadioBrowserStateImplCopyWithImpl(
      _$ContentRadioBrowserStateImpl _value,
      $Res Function(_$ContentRadioBrowserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingMore = null,
    Object? stations = null,
    Object? offset = null,
    Object? limit = null,
    Object? isEndOfData = null,
    Object? countryCode = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_$ContentRadioBrowserStateImpl(
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<RadioStation>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isEndOfData: null == isEndOfData
          ? _value.isEndOfData
          : isEndOfData // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContentRadioBrowserStateImpl
    with DiagnosticableTreeMixin
    implements _ContentRadioBrowserState {
  const _$ContentRadioBrowserStateImpl(
      {this.isLoadingMore = false,
      final List<RadioStation> stations = const [],
      this.offset = 0,
      this.limit = 20,
      this.isEndOfData = false,
      this.countryCode,
      this.countryName})
      : _stations = stations;

  @override
  @JsonKey()
  final bool isLoadingMore;
  final List<RadioStation> _stations;
  @override
  @JsonKey()
  List<RadioStation> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final bool isEndOfData;
  @override
  final String? countryCode;
  @override
  final String? countryName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserState.content(isLoadingMore: $isLoadingMore, stations: $stations, offset: $offset, limit: $limit, isEndOfData: $isEndOfData, countryCode: $countryCode, countryName: $countryName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioBrowserState.content'))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore))
      ..add(DiagnosticsProperty('stations', stations))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('isEndOfData', isEndOfData))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('countryName', countryName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentRadioBrowserStateImpl &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.isEndOfData, isEndOfData) ||
                other.isEndOfData == isEndOfData) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingMore,
      const DeepCollectionEquality().hash(_stations),
      offset,
      limit,
      isEndOfData,
      countryCode,
      countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentRadioBrowserStateImplCopyWith<_$ContentRadioBrowserStateImpl>
      get copyWith => __$$ContentRadioBrowserStateImplCopyWithImpl<
          _$ContentRadioBrowserStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)
        content,
    required TResult Function(Exception? error) error,
  }) {
    return content(isLoadingMore, stations, offset, limit, isEndOfData,
        countryCode, countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult? Function(Exception? error)? error,
  }) {
    return content?.call(isLoadingMore, stations, offset, limit, isEndOfData,
        countryCode, countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(isLoadingMore, stations, offset, limit, isEndOfData,
          countryCode, countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRadioBrowserState value) initial,
    required TResult Function(_LoadingRadioBrowserState value) loading,
    required TResult Function(_ContentRadioBrowserState value) content,
    required TResult Function(_ErrorRadioBrowserState value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRadioBrowserState value)? initial,
    TResult? Function(_LoadingRadioBrowserState value)? loading,
    TResult? Function(_ContentRadioBrowserState value)? content,
    TResult? Function(_ErrorRadioBrowserState value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRadioBrowserState value)? initial,
    TResult Function(_LoadingRadioBrowserState value)? loading,
    TResult Function(_ContentRadioBrowserState value)? content,
    TResult Function(_ErrorRadioBrowserState value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _ContentRadioBrowserState implements RadioBrowserState {
  const factory _ContentRadioBrowserState(
      {final bool isLoadingMore,
      final List<RadioStation> stations,
      final int offset,
      final int limit,
      final bool isEndOfData,
      final String? countryCode,
      final String? countryName}) = _$ContentRadioBrowserStateImpl;

  bool get isLoadingMore;
  List<RadioStation> get stations;
  int get offset;
  int get limit;
  bool get isEndOfData;
  String? get countryCode;
  String? get countryName;
  @JsonKey(ignore: true)
  _$$ContentRadioBrowserStateImplCopyWith<_$ContentRadioBrowserStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorRadioBrowserStateImplCopyWith<$Res> {
  factory _$$ErrorRadioBrowserStateImplCopyWith(
          _$ErrorRadioBrowserStateImpl value,
          $Res Function(_$ErrorRadioBrowserStateImpl) then) =
      __$$ErrorRadioBrowserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? error});
}

/// @nodoc
class __$$ErrorRadioBrowserStateImplCopyWithImpl<$Res>
    extends _$RadioBrowserStateCopyWithImpl<$Res, _$ErrorRadioBrowserStateImpl>
    implements _$$ErrorRadioBrowserStateImplCopyWith<$Res> {
  __$$ErrorRadioBrowserStateImplCopyWithImpl(
      _$ErrorRadioBrowserStateImpl _value,
      $Res Function(_$ErrorRadioBrowserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorRadioBrowserStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ErrorRadioBrowserStateImpl
    with DiagnosticableTreeMixin
    implements _ErrorRadioBrowserState {
  const _$ErrorRadioBrowserStateImpl({this.error});

  @override
  final Exception? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioBrowserState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioBrowserState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRadioBrowserStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRadioBrowserStateImplCopyWith<_$ErrorRadioBrowserStateImpl>
      get copyWith => __$$ErrorRadioBrowserStateImplCopyWithImpl<
          _$ErrorRadioBrowserStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)
        content,
    required TResult Function(Exception? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult? Function(Exception? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool isLoadingMore,
            List<RadioStation> stations,
            int offset,
            int limit,
            bool isEndOfData,
            String? countryCode,
            String? countryName)?
        content,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRadioBrowserState value) initial,
    required TResult Function(_LoadingRadioBrowserState value) loading,
    required TResult Function(_ContentRadioBrowserState value) content,
    required TResult Function(_ErrorRadioBrowserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRadioBrowserState value)? initial,
    TResult? Function(_LoadingRadioBrowserState value)? loading,
    TResult? Function(_ContentRadioBrowserState value)? content,
    TResult? Function(_ErrorRadioBrowserState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRadioBrowserState value)? initial,
    TResult Function(_LoadingRadioBrowserState value)? loading,
    TResult Function(_ContentRadioBrowserState value)? content,
    TResult Function(_ErrorRadioBrowserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorRadioBrowserState implements RadioBrowserState {
  const factory _ErrorRadioBrowserState({final Exception? error}) =
      _$ErrorRadioBrowserStateImpl;

  Exception? get error;
  @JsonKey(ignore: true)
  _$$ErrorRadioBrowserStateImplCopyWith<_$ErrorRadioBrowserStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
