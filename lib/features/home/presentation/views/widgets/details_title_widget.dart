import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';

class DetailsTitleWidget extends StatelessWidget {
  const DetailsTitleWidget({
    super.key,
    required this.place,
    required this.fontSize,
  });

  final Place place;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  place.title,
                  minFontSize: 16,
                  maxFontSize: 32,
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                AutoSizeText(
                  place.subtitle,
                  minFontSize: 12,
                  maxFontSize: 22,
                  style: TextStyle(color: Colors.grey[500], fontSize: fontSize),
                )
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const SizedBox(width: 8),
          const Text('41'),
        ],
      ),
    );
  }
}
