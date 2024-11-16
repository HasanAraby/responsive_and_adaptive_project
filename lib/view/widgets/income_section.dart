import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/view/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_project/view/widgets/income_section_body.dart';
import 'package:responsive_and_adaptive_project/view/widgets/incom_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomSectionHeader(),
        IncomeSectionBody(),
      ],
    ));
  }
}
