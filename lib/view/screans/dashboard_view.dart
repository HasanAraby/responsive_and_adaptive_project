import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/size_config.dart';
import 'package:responsive_and_adaptive_project/view/widgets/adaptive_layout_widget.dart';
import 'package:responsive_and_adaptive_project/view/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_project/view/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_and_adaptive_project/view/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_and_adaptive_project/view/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer: width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
