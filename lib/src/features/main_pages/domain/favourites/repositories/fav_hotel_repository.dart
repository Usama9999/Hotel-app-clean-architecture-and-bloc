import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';

abstract class FavHotelRepository {
  Future<Either<Failure, List<HotelModel>>> getFavHotels();
  Future<Either<Failure, bool>> saveHotel(HotelModel hotelModel);
  Future<Either<Failure, bool>> removeFavouriteHotel(String key);
}
