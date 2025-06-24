import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => const ListTile(
        title: Text(
          'أماكن سياحية',
          textDirection: TextDirection.rtl,
        ),
        leading: Icon(Icons.location_city),
      ),
    );
  }
}
