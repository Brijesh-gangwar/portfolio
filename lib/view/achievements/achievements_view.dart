import 'package:flutter/material.dart';
import 'package:brijesh_portfolio/res/constants.dart';

import 'package:brijesh_portfolio/view_model/responsive.dart';

import 'package:get/get.dart';
import '../../view_model/getx_controllers/achievements_controller.dart';
import '../projects/components/title_text.dart';

import 'components/achievement_grid.dart';

class Achievements extends StatelessWidget {
  Achievements({super.key});
  final controller = Get.put(AchievementsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(height: defaultPadding),
          const TitleText(prefix: 'My', title: 'Achievements'),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Responsive(
              desktop: AchievementsGrid(crossAxisCount: 3),
              extraLargeScreen: AchievementsGrid(crossAxisCount: 4),
              largeMobile: AchievementsGrid(crossAxisCount: 1, ratio: 1.8),
              mobile: AchievementsGrid(crossAxisCount: 1, ratio: 1.5),
              tablet: AchievementsGrid(ratio: 1.4, crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }
}
