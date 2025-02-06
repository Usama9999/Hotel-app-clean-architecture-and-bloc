import 'package:dio/dio.dart';
import 'package:ny_times_app/core/network/error/dio_error_handler.dart';
import 'package:ny_times_app/core/network/error/exceptions.dart';
import 'package:ny_times_app/core/utils/constant/network_constant.dart';
import 'package:ny_times_app/src/features/main_pages/data/hotels/data_sources/remote/abstract_article_api.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_param.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_response_model.dart';

class HotelImplApi extends AbstractHotelApi {
  final Dio dio;

  HotelImplApi(this.dio);

  @override
  Future<ApiResponse<List<HotelModel>>> getHotels(HotelParams params) async {
    try {
      final result = (await dio.get(
        getHotelPath(params.location),
      ));
      if (result.data == null)
        throw ServerException("Unknown Error", result.statusCode);

      return ApiResponse.fromJson<List<HotelModel>>(
          result.data, HotelModel.fromJsonList);
    } on DioError catch (e) {
      if (e.type == DioErrorType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}
