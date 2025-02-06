import 'package:ny_times_app/core/network/dio_network.dart';
import 'package:ny_times_app/core/utils/injections.dart';
import 'package:ny_times_app/src/features/main_pages/data/favourites/data_sources/local_fav_datastore.dart';
import 'package:ny_times_app/src/features/main_pages/data/favourites/repositories/fav_repo_imp.dart';
import 'package:ny_times_app/src/features/main_pages/data/hotels/data_sources/remote/articles_impl_api.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/repositories/fav_hotel_repository.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/usercases/add_fav_usercase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/usercases/get_fav_usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/favourites/usercases/remove_fav_usecase.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/usecases/hotels_usecase.dart';

import '../data/hotels/data_sources/local/articles_shared_prefs.dart';
import '../data/hotels/repositories/hotel_repo_impl.dart';
import '../domain/hotels/repositories/hotels_repository.dart';

initHotelInjections() {
  sl.registerSingleton<HotelImplApi>(HotelImplApi(DioNetwork.appAPI));
  sl.registerSingleton<HotelRepository>(HotelRepositoryImpl(sl()));
  sl.registerSingleton<HotelsSharedPrefs>(HotelsSharedPrefs(sl()));
  sl.registerSingleton<HotelsUseCase>(HotelsUseCase(sl()));

  sl.registerSingleton<FavHotelsSharedPrefs>(FavHotelsSharedPrefs(sl()));
  sl.registerSingleton<FavHotelRepository>(FavRepositoryImpl(sl()));
  sl.registerSingleton<AddFavUsecase>(AddFavUsecase(sl()));
  sl.registerSingleton<RemoveFavUsecase>(RemoveFavUsecase(sl()));
  sl.registerSingleton<GetFavUsecase>(GetFavUsecase(sl()));
}
