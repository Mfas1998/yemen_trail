import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/drawer_widget.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/places_grid_view.dart';

class HomeTabletBody extends StatelessWidget {
  const HomeTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: DrawerWidget()),
        Expanded(flex: 5, child: PlacesGridView()),
      ],
    );
  }
}
