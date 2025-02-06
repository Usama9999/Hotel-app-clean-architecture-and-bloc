import 'package:bloc/bloc.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/usercases/add_fav_usercase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/usercases/get_fav_usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/usercases/remove_fav_usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavState> {
  final AddFavUsecase addFavUsecase;
  final GetFavUsecase getFavUsecase;
  final RemoveFavUsecase removeFavUsecase;

  List<HotelModel> allHotels = [];

  FavouriteBloc(
      {required this.addFavUsecase,
      required this.getFavUsecase,
      required this.removeFavUsecase})
      : super(LoadingGetFavHotelsState()) {
    on<OnGettingFavHotelsEvent>(_onGettingHotelEvent);
    on<OnAddToFavEvent>(_onAddToFav);
    on<OnRemoveToFavEvent>(_onFavRemove);
  }

  _onGettingHotelEvent(
      OnGettingFavHotelsEvent event, Emitter<FavState> emitter) async {
    if (event.withLoading) {
      emitter(LoadingGetFavHotelsState());
    }

    final result = await getFavUsecase.call();
    result.fold((l) {
      if (l is CancelTokenFailure) {
        emitter(LoadingGetFavHotelsState());
      } else {
        emitter(ErrorGetFavHotelState(l.errorMessage));
      }
    }, (r) {
      // Return list of hotels
      allHotels = r;
      emitter(SuccessGetFavHotelState(allHotels));
    });
  }

  _onAddToFav(OnAddToFavEvent event, Emitter<FavState> emitter) {
    addFavUsecase.call(event.model);
  }

  _onFavRemove(OnRemoveToFavEvent event, Emitter<FavState> emitter) async {
    await removeFavUsecase.call(event.key);
  }
}
