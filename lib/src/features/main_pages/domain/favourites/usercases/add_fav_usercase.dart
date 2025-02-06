import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/core/utils/usecases/usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/repositories/fav_hotel_repository.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';

class AddFavUsecase extends UseCase<bool, HotelModel> {
  final FavHotelRepository repository;

  AddFavUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(HotelModel model) async {
    final result = await repository.saveHotel(model);
    return result.fold((l) {
      return Left(l);
    }, (r) async {
      return Right(r);
    });
  }
}
