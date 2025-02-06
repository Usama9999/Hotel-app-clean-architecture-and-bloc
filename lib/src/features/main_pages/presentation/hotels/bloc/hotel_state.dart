part of 'hotel_bloc.dart';

abstract class HotelState {
  const HotelState();
}

class LoadingGetHotelState extends HotelState {}

class ErrorGetHotelState extends HotelState {
  final String errorMsg;

  ErrorGetHotelState(this.errorMsg);
}

class SuccessGetHotelState extends HotelState {
  final List<HotelModel> articles;

  SuccessGetHotelState(this.articles);
}

class SearchingState extends HotelState {
  final List<HotelModel> articles;

  SearchingState(this.articles);
}

// --------------------End Searching States-------------------- //
