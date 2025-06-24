import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/presentation/views/widgets/custom_button.dart';

class DetailsButtonsWidget extends StatelessWidget {
  const DetailsButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButton(label: 'CALL', icon: Icons.call),
        CustomButton(label: 'ROUTE', icon: Icons.near_me),
        CustomButton(label: 'SHARE', icon: Icons.share),
      ],
    );
  }
}
