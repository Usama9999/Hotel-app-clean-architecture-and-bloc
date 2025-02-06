import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class HotelModel with _$HotelModel {
  factory HotelModel({
    required String? name,
    required bool? favourite,
    required String? key,
    required String? accommodation_type,
    required PriceRange? price_ranges,
    required ReviewSummary? review_summary,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);

  static List<HotelModel> fromJsonList(List? json) {
    return json?.map((e) => HotelModel.fromJson(e)).toList() ?? [];
  }
}

@freezed
class PriceRange with _$PriceRange {
  factory PriceRange({required double maximum, required double minimum}) =
      _PriceRange;

  factory PriceRange.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeFromJson(json);
}

@freezed
class ReviewSummary with _$ReviewSummary {
  factory ReviewSummary({required int rating, required int count}) =
      _ReviewSummary;

  factory ReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryFromJson(json);
}
