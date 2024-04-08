import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request.freezed.dart';
part 'search_request.g.dart';

@Freezed(fromJson: false, toJson: true)
class SearchRequest with _$SearchRequest {
  factory SearchRequest({
    @Default(0) int offset,
    @Default(10) int limit,
    @JsonKey(name: 'countrycode') required String countryCode,
    @Default(true) @JsonKey(name: 'hidebroken') bool hideBroken,
    @Default('clickcount') String order,
    @Default(true) bool reverse,
  }) = _SearchRequest;
}
