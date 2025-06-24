import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yemen_trail/features/home/presentation/views/home_view.dart';

class YemenTrail extends StatelessWidget {
  const YemenTrail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: CustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        title: 'Yemen Trail',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView());
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
