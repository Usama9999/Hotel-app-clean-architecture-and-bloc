import 'dart:convert';

import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavHotelsSharedPrefs {
  final SharedPreferences _preferences;

  FavHotelsSharedPrefs(this._preferences);

  /// __________ Clear Storage __________ ///
  Future<bool> clearAllLocalData() async {
    return true;
  }

  Future<List<HotelModel>> getFavHotels() async {
    try {
      List<String> hotels = _preferences.getStringList("hotels") ?? [];
      return hotels
          .map((h) =>
              HotelModel.fromJson(jsonDecode(h)).copyWith(favourite: true))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> addToFavHotel(HotelModel hotel) async {
    try {
      print('add');
      List<String> hotels = _preferences.getStringList("hotels") ?? [];
      if (hotels.where((h) => jsonDecode(h)['key'] == hotel.key).isEmpty) {
        hotels.add(jsonEncode(hotel.toJson()));
      }
      await _preferences.setStringList("hotels", hotels);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> removeFromFav(String key) async {
    try {
      print('remove');
      List<String> hotels = _preferences.getStringList("hotels") ?? [];
      hotels.removeWhere((h) => jsonDecode(h)['key'] == key);
      await _preferences.setStringList("hotels", hotels);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
