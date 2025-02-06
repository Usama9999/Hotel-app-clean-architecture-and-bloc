part of 'favourite_bloc.dart';

abstract class FavouriteEvent {
  const FavouriteEvent();
}

class OnGettingFavHotelsEvent extends FavouriteEvent {
  final bool withLoading;

  OnGettingFavHotelsEvent({this.withLoading = true});
}

class OnAddToFavEvent extends FavouriteEvent {
  final HotelModel model;
  OnAddToFavEvent({required this.model});
}

class OnRemoveToFavEvent extends FavouriteEvent {
  final String key;
  OnRemoveToFavEvent({required this.key});
}
