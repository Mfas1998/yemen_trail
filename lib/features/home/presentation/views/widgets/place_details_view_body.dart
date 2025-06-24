import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';

import 'details_buttons_widget.dart';
import 'details_description_widget.dart';
import 'details_title_widget.dart';

class PlaceDetailsViewBody extends StatelessWidget {
  const PlaceDetailsViewBody({super.key, required this.place});

  final Place place;
  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    return LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth >= 600
          ? SingleChildScrollView(
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 6,
                margin: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            place.image,
                            height: 320,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          DetailsTitleWidget(place: place, fontSize: fontSize),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 24.0),
                            child: DetailsButtonsWidget(),
                          ),
                          DetailsDescriptionWidget(
                              place: place, fontSize: fontSize)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView(
              children: [
                Image.asset(
                  place.image,
                  height: 320,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                DetailsTitleWidget(place: place, fontSize: fontSize),
                const DetailsButtonsWidget(),
                DetailsDescriptionWidget(place: place, fontSize: fontSize)
              ],
            ),
    );
  }
}
