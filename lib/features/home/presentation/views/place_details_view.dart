import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';
import 'widgets/place_details_view_body.dart';

class PlaceDetailsView extends StatelessWidget {
  const PlaceDetailsView({super.key, required this.place});

  final Place place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.subtitle),
        centerTitle: true,
      ),
      body: PlaceDetailsViewBody(
        place: place,
      ),
    );
  }
}
