import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptiveLayout.dart';
import 'package:responsive_dashboard/widgets/desktopLayout.dart';

class Dashboardview extends StatelessWidget {
  const Dashboardview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => Desktoplayout(),),
    );
  }
}
