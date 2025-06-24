import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';
import 'package:yemen_trail/features/home/presentation/views/place_details_view.dart';

class PlaceGridViewItem extends StatelessWidget {
  const PlaceGridViewItem({
    super.key,
    required this.place,
    this.onPlaceChanged,
  });

  final ValueChanged<Place>? onPlaceChanged;
  final Place place;

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    return InkWell(
      onTap: () {
        onPlaceChanged != null
            ? onPlaceChanged!(place)
            : Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PlaceDetailsView(place: place)));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: AutoSizeText(
                place.title,
                minFontSize: 18,
                maxFontSize: 28,
                style: TextStyle(fontSize: fontSize),
              ),
              subtitle: AutoSizeText(
                place.subtitle,
                minFontSize: 14,
                maxFontSize: 20,
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            child: Image.asset(
              place.image,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
