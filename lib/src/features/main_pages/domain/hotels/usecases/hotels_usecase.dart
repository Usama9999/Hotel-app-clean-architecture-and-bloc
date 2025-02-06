import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/core/utils/usecases/usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_param.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/repositories/hotels_repository.dart';

class HotelsUseCase extends UseCase<List<HotelModel>, HotelParams> {
  final HotelRepository repository;

  HotelsUseCase(this.repository);

  @override
  Future<Either<Failure, List<HotelModel>>> call(HotelParams params) async {
    final result = await repository.getHotels(params);
    return result.fold((l) {
      return Left(l);
    }, (r) async {
      return Right(r);
    });
  }
}
