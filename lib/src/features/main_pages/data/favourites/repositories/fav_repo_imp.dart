import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/exceptions.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/src/features/main_pages/data/favourites/data_sources/local_fav_datastore.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/repositories/fav_hotel_repository.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';

class FavRepositoryImpl extends FavHotelRepository {
  final FavHotelsSharedPrefs favHotelsSharedPrefs;

  FavRepositoryImpl(
    this.favHotelsSharedPrefs,
  );

  @override
  Future<Either<Failure, List<HotelModel>>> getFavHotels() async {
    try {
      final result = await favHotelsSharedPrefs.getFavHotels();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  @override
  Future<Either<Failure, bool>> removeFavouriteHotel(String key) async {
    try {
      await favHotelsSharedPrefs.removeFromFav(key);
      return Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString(), null));
    }
  }

  @override
  Future<Either<Failure, bool>> saveHotel(HotelModel hotelModel) async {
    try {
      await favHotelsSharedPrefs.addToFavHotel(hotelModel);
      return Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString(), null));
    }
  }
}
