import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/core/utils/usecases/usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/repositories/fav_hotel_repository.dart';

class RemoveFavUsecase extends UseCase<bool, String> {
  final FavHotelRepository repository;

  RemoveFavUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(String key) async {
    final result = await repository.removeFavouriteHotel(key);
    return result.fold((l) {
      return Left(l);
    }, (r) async {
      return Right(r);
    });
  }
}
