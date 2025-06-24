import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/datasources/places.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';

import 'place_grid_view_item.dart';

class PlacesGridView extends StatelessWidget {
  const PlacesGridView({
    super.key,
    this.isHorizontal = false,
    this.onPlaceChanged,
  });

  final ValueChanged<Place>? onPlaceChanged;
  final bool isHorizontal;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: isHorizontal ? 1 : 2,
      scrollDirection: isHorizontal ? Axis.horizontal : Axis.vertical,
      // mainAxisSpacing: 8,
      // crossAxisSpacing: 8,
      childAspectRatio: 1 / 1.2,
      padding: const EdgeInsets.all(8),
      children: allPlaces
          .map((place) => PlaceGridViewItem(
                onPlaceChanged: onPlaceChanged,
                place: place,
              ))
          .toList(),
    );
  }
}
