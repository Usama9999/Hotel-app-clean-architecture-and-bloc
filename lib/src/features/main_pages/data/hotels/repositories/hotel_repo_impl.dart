import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/exceptions.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/src/features/main_pages/data/hotels/data_sources/remote/articles_impl_api.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_param.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/repositories/hotels_repository.dart';

class HotelRepositoryImpl extends HotelRepository {
  final HotelImplApi hotelApi;

  HotelRepositoryImpl(
    this.hotelApi,
  );

  @override
  Future<Either<Failure, List<HotelModel>>> getHotels(
      HotelParams params) async {
    try {
      final result = await hotelApi.getHotels(params);
      return Right(result.results ?? []);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}
