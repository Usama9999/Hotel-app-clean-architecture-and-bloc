import 'package:flutter/foundation.dart';

class ApiResponse<T> {
  ApiResponse({
    required this.total_count,
    required this.results,
  });

  late final String? total_count;

  late final T? results;

  static fromJson<T>(Map<dynamic, dynamic> json, Function tFromJson) {
    return ApiResponse<T>(
      total_count: json['total_count'],
      results: tFromJson(json['result']['list']),
    );
  }
}
