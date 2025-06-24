import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';

class DetailsDescriptionWidget extends StatelessWidget {
  const DetailsDescriptionWidget({
    super.key,
    required this.place,
    required this.fontSize,
  });

  final Place place;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: AutoSizeText(
        place.description,
        minFontSize: 16,
        maxFontSize: 22,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
