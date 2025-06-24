import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  static isMobile(context) => MediaQuery.of(context).size.width <= 600;
  static isTablet(context) => MediaQuery.of(context).size.width < 840;
  static isDesktop(context) => MediaQuery.of(context).size.width >= 840;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    } else if (isTablet(context) && tablet != null) {
      return tablet!;
    } else {
      return desktop;
    }
  }
}
