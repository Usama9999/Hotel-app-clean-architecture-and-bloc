part of 'favourite_bloc.dart';

abstract class FavState {
  const FavState();
}

class LoadingGetFavHotelsState extends FavState {}

class ErrorGetFavHotelState extends FavState {
  final String errorMsg;

  ErrorGetFavHotelState(this.errorMsg);
}

class SuccessGetFavHotelState extends FavState {
  final List<HotelModel> hotels;

  SuccessGetFavHotelState(this.hotels);
}
