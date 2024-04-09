// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchRequest {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'countrycode')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'hidebroken')
  bool get hideBroken => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  bool get reverse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRequestCopyWith<SearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRequestCopyWith<$Res> {
  factory $SearchRequestCopyWith(
          SearchRequest value, $Res Function(SearchRequest) then) =
      _$SearchRequestCopyWithImpl<$Res, SearchRequest>;
  @useResult
  $Res call(
      {int offset,
      int limit,
      @JsonKey(name: 'countrycode') String countryCode,
      @JsonKey(name: 'hidebroken') bool hideBroken,
      String order,
      bool reverse});
}

/// @nodoc
class _$SearchRequestCopyWithImpl<$Res, $Val extends SearchRequest>
    implements $SearchRequestCopyWith<$Res> {
  _$SearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? countryCode = null,
    Object? hideBroken = null,
    Object? order = null,
    Object? reverse = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      hideBroken: null == hideBroken
          ? _value.hideBroken
          : hideBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      reverse: null == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRequestImplCopyWith<$Res>
    implements $SearchRequestCopyWith<$Res> {
  factory _$$SearchRequestImplCopyWith(
          _$SearchRequestImpl value, $Res Function(_$SearchRequestImpl) then) =
      __$$SearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset,
      int limit,
      @JsonKey(name: 'countrycode') String countryCode,
      @JsonKey(name: 'hidebroken') bool hideBroken,
      String order,
      bool reverse});
}

/// @nodoc
class __$$SearchRequestImplCopyWithImpl<$Res>
    extends _$SearchRequestCopyWithImpl<$Res, _$SearchRequestImpl>
    implements _$$SearchRequestImplCopyWith<$Res> {
  __$$SearchRequestImplCopyWithImpl(
      _$SearchRequestImpl _value, $Res Function(_$SearchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? countryCode = null,
    Object? hideBroken = null,
    Object? order = null,
    Object? reverse = null,
  }) {
    return _then(_$SearchRequestImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      hideBroken: null == hideBroken
          ? _value.hideBroken
          : hideBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      reverse: null == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$SearchRequestImpl implements _SearchRequest {
  _$SearchRequestImpl(
      {this.offset = 0,
      this.limit = 20,
      @JsonKey(name: 'countrycode') required this.countryCode,
      @JsonKey(name: 'hidebroken') this.hideBroken = true,
      this.order = 'clickcount',
      this.reverse = true});

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey(name: 'countrycode')
  final String countryCode;
  @override
  @JsonKey(name: 'hidebroken')
  final bool hideBroken;
  @override
  @JsonKey()
  final String order;
  @override
  @JsonKey()
  final bool reverse;

  @override
  String toString() {
    return 'SearchRequest(offset: $offset, limit: $limit, countryCode: $countryCode, hideBroken: $hideBroken, order: $order, reverse: $reverse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRequestImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.hideBroken, hideBroken) ||
                other.hideBroken == hideBroken) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.reverse, reverse) || other.reverse == reverse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, offset, limit, countryCode, hideBroken, order, reverse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRequestImplCopyWith<_$SearchRequestImpl> get copyWith =>
      __$$SearchRequestImplCopyWithImpl<_$SearchRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRequestImplToJson(
      this,
    );
  }
}

abstract class _SearchRequest implements SearchRequest {
  factory _SearchRequest(
      {final int offset,
      final int limit,
      @JsonKey(name: 'countrycode') required final String countryCode,
      @JsonKey(name: 'hidebroken') final bool hideBroken,
      final String order,
      final bool reverse}) = _$SearchRequestImpl;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(name: 'countrycode')
  String get countryCode;
  @override
  @JsonKey(name: 'hidebroken')
  bool get hideBroken;
  @override
  String get order;
  @override
  bool get reverse;
  @override
  @JsonKey(ignore: true)
  _$$SearchRequestImplCopyWith<_$SearchRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
