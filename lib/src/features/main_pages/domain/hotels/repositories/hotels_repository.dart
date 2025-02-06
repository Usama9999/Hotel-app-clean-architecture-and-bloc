import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_param.dart';

abstract class HotelRepository {
  Future<Either<Failure, List<HotelModel>>> getHotels(HotelParams params);
}
