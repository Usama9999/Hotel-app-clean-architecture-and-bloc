// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  String? get name => throw _privateConstructorUsedError;
  bool? get favourite => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get accommodation_type => throw _privateConstructorUsedError;
  PriceRange? get price_ranges => throw _privateConstructorUsedError;
  ReviewSummary? get review_summary => throw _privateConstructorUsedError;

  /// Serializes this HotelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {String? name,
      bool? favourite,
      String? key,
      String? accommodation_type,
      PriceRange? price_ranges,
      ReviewSummary? review_summary});

  $PriceRangeCopyWith<$Res>? get price_ranges;
  $ReviewSummaryCopyWith<$Res>? get review_summary;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? favourite = freezed,
    Object? key = freezed,
    Object? accommodation_type = freezed,
    Object? price_ranges = freezed,
    Object? review_summary = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      favourite: freezed == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      accommodation_type: freezed == accommodation_type
          ? _value.accommodation_type
          : accommodation_type // ignore: cast_nullable_to_non_nullable
              as String?,
      price_ranges: freezed == price_ranges
          ? _value.price_ranges
          : price_ranges // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      review_summary: freezed == review_summary
          ? _value.review_summary
          : review_summary // ignore: cast_nullable_to_non_nullable
              as ReviewSummary?,
    ) as $Val);
  }

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res>? get price_ranges {
    if (_value.price_ranges == null) {
      return null;
    }

    return $PriceRangeCopyWith<$Res>(_value.price_ranges!, (value) {
      return _then(_value.copyWith(price_ranges: value) as $Val);
    });
  }

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewSummaryCopyWith<$Res>? get review_summary {
    if (_value.review_summary == null) {
      return null;
    }

    return $ReviewSummaryCopyWith<$Res>(_value.review_summary!, (value) {
      return _then(_value.copyWith(review_summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      bool? favourite,
      String? key,
      String? accommodation_type,
      PriceRange? price_ranges,
      ReviewSummary? review_summary});

  @override
  $PriceRangeCopyWith<$Res>? get price_ranges;
  @override
  $ReviewSummaryCopyWith<$Res>? get review_summary;
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? favourite = freezed,
    Object? key = freezed,
    Object? accommodation_type = freezed,
    Object? price_ranges = freezed,
    Object? review_summary = freezed,
  }) {
    return _then(_$HotelModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      favourite: freezed == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      accommodation_type: freezed == accommodation_type
          ? _value.accommodation_type
          : accommodation_type // ignore: cast_nullable_to_non_nullable
              as String?,
      price_ranges: freezed == price_ranges
          ? _value.price_ranges
          : price_ranges // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      review_summary: freezed == review_summary
          ? _value.review_summary
          : review_summary // ignore: cast_nullable_to_non_nullable
              as ReviewSummary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelModelImpl implements _HotelModel {
  _$HotelModelImpl(
      {required this.name,
      required this.favourite,
      required this.key,
      required this.accommodation_type,
      required this.price_ranges,
      required this.review_summary});

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  final String? name;
  @override
  final bool? favourite;
  @override
  final String? key;
  @override
  final String? accommodation_type;
  @override
  final PriceRange? price_ranges;
  @override
  final ReviewSummary? review_summary;

  @override
  String toString() {
    return 'HotelModel(name: $name, favourite: $favourite, key: $key, accommodation_type: $accommodation_type, price_ranges: $price_ranges, review_summary: $review_summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.favourite, favourite) ||
                other.favourite == favourite) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.accommodation_type, accommodation_type) ||
                other.accommodation_type == accommodation_type) &&
            (identical(other.price_ranges, price_ranges) ||
                other.price_ranges == price_ranges) &&
            (identical(other.review_summary, review_summary) ||
                other.review_summary == review_summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, favourite, key,
      accommodation_type, price_ranges, review_summary);

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  factory _HotelModel(
      {required final String? name,
      required final bool? favourite,
      required final String? key,
      required final String? accommodation_type,
      required final PriceRange? price_ranges,
      required final ReviewSummary? review_summary}) = _$HotelModelImpl;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  String? get name;
  @override
  bool? get favourite;
  @override
  String? get key;
  @override
  String? get accommodation_type;
  @override
  PriceRange? get price_ranges;
  @override
  ReviewSummary? get review_summary;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) {
  return _PriceRange.fromJson(json);
}

/// @nodoc
mixin _$PriceRange {
  double get maximum => throw _privateConstructorUsedError;
  double get minimum => throw _privateConstructorUsedError;

  /// Serializes this PriceRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
          PriceRange value, $Res Function(PriceRange) then) =
      _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({double maximum, double minimum});
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_value.copyWith(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as double,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
          _$PriceRangeImpl value, $Res Function(_$PriceRangeImpl) then) =
      __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maximum, double minimum});
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
      _$PriceRangeImpl _value, $Res Function(_$PriceRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_$PriceRangeImpl(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as double,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceRangeImpl implements _PriceRange {
  _$PriceRangeImpl({required this.maximum, required this.minimum});

  factory _$PriceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceRangeImplFromJson(json);

  @override
  final double maximum;
  @override
  final double minimum;

  @override
  String toString() {
    return 'PriceRange(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceRangeImplToJson(
      this,
    );
  }
}

abstract class _PriceRange implements PriceRange {
  factory _PriceRange(
      {required final double maximum,
      required final double minimum}) = _$PriceRangeImpl;

  factory _PriceRange.fromJson(Map<String, dynamic> json) =
      _$PriceRangeImpl.fromJson;

  @override
  double get maximum;
  @override
  double get minimum;

  /// Create a copy of PriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewSummary _$ReviewSummaryFromJson(Map<String, dynamic> json) {
  return _ReviewSummary.fromJson(json);
}

/// @nodoc
mixin _$ReviewSummary {
  int get rating => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ReviewSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewSummaryCopyWith<ReviewSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewSummaryCopyWith<$Res> {
  factory $ReviewSummaryCopyWith(
          ReviewSummary value, $Res Function(ReviewSummary) then) =
      _$ReviewSummaryCopyWithImpl<$Res, ReviewSummary>;
  @useResult
  $Res call({int rating, int count});
}

/// @nodoc
class _$ReviewSummaryCopyWithImpl<$Res, $Val extends ReviewSummary>
    implements $ReviewSummaryCopyWith<$Res> {
  _$ReviewSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewSummaryImplCopyWith<$Res>
    implements $ReviewSummaryCopyWith<$Res> {
  factory _$$ReviewSummaryImplCopyWith(
          _$ReviewSummaryImpl value, $Res Function(_$ReviewSummaryImpl) then) =
      __$$ReviewSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rating, int count});
}

/// @nodoc
class __$$ReviewSummaryImplCopyWithImpl<$Res>
    extends _$ReviewSummaryCopyWithImpl<$Res, _$ReviewSummaryImpl>
    implements _$$ReviewSummaryImplCopyWith<$Res> {
  __$$ReviewSummaryImplCopyWithImpl(
      _$ReviewSummaryImpl _value, $Res Function(_$ReviewSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? count = null,
  }) {
    return _then(_$ReviewSummaryImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewSummaryImpl implements _ReviewSummary {
  _$ReviewSummaryImpl({required this.rating, required this.count});

  factory _$ReviewSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewSummaryImplFromJson(json);

  @override
  final int rating;
  @override
  final int count;

  @override
  String toString() {
    return 'ReviewSummary(rating: $rating, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewSummaryImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, count);

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewSummaryImplCopyWith<_$ReviewSummaryImpl> get copyWith =>
      __$$ReviewSummaryImplCopyWithImpl<_$ReviewSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewSummaryImplToJson(
      this,
    );
  }
}

abstract class _ReviewSummary implements ReviewSummary {
  factory _ReviewSummary(
      {required final int rating,
      required final int count}) = _$ReviewSummaryImpl;

  factory _ReviewSummary.fromJson(Map<String, dynamic> json) =
      _$ReviewSummaryImpl.fromJson;

  @override
  int get rating;
  @override
  int get count;

  /// Create a copy of ReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewSummaryImplCopyWith<_$ReviewSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
