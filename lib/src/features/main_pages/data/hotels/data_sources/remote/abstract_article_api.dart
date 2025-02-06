import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_param.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_response_model.dart';

abstract class AbstractHotelApi {
  Future<ApiResponse<List<HotelModel>>> getHotels(HotelParams params);
}
