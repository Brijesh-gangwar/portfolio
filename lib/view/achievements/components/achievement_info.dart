import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../../res/constants.dart';

import '../../../view model/getx_controllers/achievements_controller.dart';
import 'achievement_detail.dart';

class AchievementsStack extends StatelessWidget {
  final controller = Get.put(AchievementsController());
  AchievementsStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {

      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: AchievementsDetail(index: index,),
      ),
    );
  }
}