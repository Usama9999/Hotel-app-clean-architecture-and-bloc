import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ny_times_app/core/utils/injections.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/models/hotel_model.dart';
import 'package:ny_times_app/src/features/main_pages/presentation/favourites/bloc/favourite_bloc.dart';

class HotelCard extends StatefulWidget {
  HotelModel model;
  Function? getRefresh;
  HotelCard({Key? key, required this.model, this.getRefresh}) : super(key: key);

  @override
  _HotelCardState createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  bool isFavorite = false;

  int randome = Random().nextInt(100);

  FavouriteBloc _bloc = FavouriteBloc(
      addFavUsecase: sl(), getFavUsecase: sl(), removeFavUsecase: sl());

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Hotel Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://picsum.photos/200/300?random=${randome}',
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model.name ?? '',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.model.accommodation_type ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            widget.model.review_summary?.count.toString() ??
                                '0',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Favorite Icon
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.model = widget.model.copyWith(
                        favourite: !(widget.model.favourite ?? false));
                  });
                  if (widget.model.favourite == false) {
                    _bloc.add(OnRemoveToFavEvent(key: widget.model.key ?? ''));
                  } else {
                    _bloc.add(OnAddToFavEvent(model: widget.model));
                  }
                  if (widget.getRefresh != null) {
                    widget.getRefresh!();
                  }
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    widget.model.favourite == true
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: widget.model.favourite == true
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
