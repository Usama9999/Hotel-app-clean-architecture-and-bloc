import 'package:dartz/dartz.dart';
import 'package:ny_times_app/core/network/error/failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

abstract class UseCaseNoParam<T> {
  Future<Either<Failure, T>> call();
}
