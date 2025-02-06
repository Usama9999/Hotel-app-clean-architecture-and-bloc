import 'package:bloc/bloc.dart';
import 'package:ny_times_app/core/network/error/failures.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_param.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/usecases/hotels_usecase.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, HotelState> {
  final HotelsUseCase articlesUseCase;

  // List of articles
  List<HotelModel> allHotels = [];

  ArticlesBloc({required this.articlesUseCase})
      : super(LoadingGetHotelState()) {
    on<OnGettingArticlesEvent>(_onGettingArticlesEvent);
    // on<OnSearchingArticlesEvent>(_onSearchingEvent);
  }

// Getting articles event
  _onGettingArticlesEvent(
      OnGettingArticlesEvent event, Emitter<HotelState> emitter) async {
    if (event.withLoading) {
      emitter(LoadingGetHotelState());
    }

    final result = await articlesUseCase.call(
      HotelParams(
        location: 'g295413',
      ),
    );
    result.fold((l) {
      if (l is CancelTokenFailure) {
        emitter(LoadingGetHotelState());
      } else {
        emitter(ErrorGetHotelState(l.errorMessage));
      }
    }, (r) {
      // Return list of hotels
      allHotels = r;
      emitter(SuccessGetHotelState(allHotels));
    });
  }

  // // Searching event
  // _onSearchingEvent(
  //     OnSearchingArticlesEvent event, Emitter<ArticlesState> emitter) async {
  //   emitter(
  //     SearchingState(
  //       _runFilter(event.text),
  //     ),
  //   );
  // }

  // // This function is called whenever the text field changes
  // List<HotelModel> _runFilter(
  //   String text,
  // ) {
  //   List<HotelModel> results = [];
  //   if (text.isEmpty) {
  //     // if the search field is empty or only contains white-space, we'll display all users
  //     results = List.from(allHotels);
  //   } else {
  //     results = allHotels;
  //   }
  //   return results;
  // }
}
