import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/place_details_view_body.dart';

import 'drawer_widget.dart';
import 'places_grid_view.dart';

class HomeDesktopBody extends StatelessWidget {
  const HomeDesktopBody(
      {super.key, required this.place, required this.onPlaceChanged});

  final Place place;
  final ValueChanged<Place> onPlaceChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: DrawerWidget()),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: PlacesGridView(
                      isHorizontal: true,
                      onPlaceChanged: onPlaceChanged,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: PlaceDetailsViewBody(
                      place: place,
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
