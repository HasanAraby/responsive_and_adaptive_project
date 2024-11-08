import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/adaptive_layout_widget.dart';
import 'package:responsive_and_adaptive_project/view/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    // toolbarHeight:
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 900
          ? AppBar(
              title: const Text('DashBoard'),
            )
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
