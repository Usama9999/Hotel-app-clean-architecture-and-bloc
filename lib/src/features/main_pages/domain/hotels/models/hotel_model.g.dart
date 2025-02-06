// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelModelImpl _$$HotelModelImplFromJson(Map<String, dynamic> json) =>
    _$HotelModelImpl(
      name: json['name'] as String?,
      favourite: json['favourite'] as bool?,
      key: json['key'] as String?,
      accommodation_type: json['accommodation_type'] as String?,
      price_ranges: json['price_ranges'] == null
          ? null
          : PriceRange.fromJson(json['price_ranges'] as Map<String, dynamic>),
      review_summary: json['review_summary'] == null
          ? null
          : ReviewSummary.fromJson(
              json['review_summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelModelImplToJson(_$HotelModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'favourite': instance.favourite,
      'key': instance.key,
      'accommodation_type': instance.accommodation_type,
      'price_ranges': instance.price_ranges,
      'review_summary': instance.review_summary,
    };

_$PriceRangeImpl _$$PriceRangeImplFromJson(Map<String, dynamic> json) =>
    _$PriceRangeImpl(
      maximum: (json['maximum'] as num).toDouble(),
      minimum: (json['minimum'] as num).toDouble(),
    );

Map<String, dynamic> _$$PriceRangeImplToJson(_$PriceRangeImpl instance) =>
    <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

_$ReviewSummaryImpl _$$ReviewSummaryImplFromJson(Map<String, dynamic> json) =>
    _$ReviewSummaryImpl(
      rating: (json['rating'] as num).toInt(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ReviewSummaryImplToJson(_$ReviewSummaryImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'count': instance.count,
    };
