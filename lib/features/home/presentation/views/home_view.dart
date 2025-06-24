import 'package:flutter/material.dart';
import 'package:yemen_trail/core/widget/responsive_layout.dart';
import 'package:yemen_trail/features/home/data/datasources/places.dart';
import 'package:yemen_trail/features/home/data/models/place.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/drawer_widget.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/home_desktop_body.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/home_mobile_body.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/home_tablet_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Place selectedPlace = allPlaces[0];
  void changePlace(Place place) => setState(() => selectedPlace = place);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yemen Trail')),
      drawer: ResponsiveLayout.isMobile(context)
          ? const Drawer(
              child: DrawerWidget(),
            )
          : null,
      backgroundColor: Colors.white,
      body: ResponsiveLayout(
          mobile: const HomeMobileBody(),
          tablet: const HomeTabletBody(),
          desktop: HomeDesktopBody(
            place: selectedPlace,
            onPlaceChanged: changePlace,
          )),
    );
  }
}
