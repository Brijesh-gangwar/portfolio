// import 'package:flutter/material.dart';
// import 'package:brijesh_portfolio/view/projects/components/project_info.dart';
// import 'package:get/get.dart';
// import '../../../model/project_model.dart';
// import '../../../res/constants.dart';
// import '../../../view model/getx_controllers/projects_controller.dart';
// class ProjectGrid extends StatelessWidget {
//   final int crossAxisCount;
//   final double ratio;
//   ProjectGrid({super.key, this.crossAxisCount = 3,  this.ratio=1.2});
//   final controller = Get.put(ProjectController());
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: const EdgeInsets.symmetric(horizontal: 30),
//       itemCount: projectList.length,
//       gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: crossAxisCount, childAspectRatio: ratio),
//       itemBuilder: (context, index) {
//         return Obx(() => AnimatedContainer(
//             duration: const Duration(milliseconds: 200),
//             margin: const EdgeInsets.symmetric(
//                 vertical: defaultPadding, horizontal: defaultPadding),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 gradient: const LinearGradient(colors: [
//                   Colors.pinkAccent,
//                   Colors.blue,
//                 ]),
//                 boxShadow:  [
//                   BoxShadow(
//                     color: Colors.pink,
//                     offset: const Offset(-2, 0),
//                     blurRadius: controller.hovers[index] ? 20 : 10,
//                   ),
//                   BoxShadow(
//                       color: Colors.blue,
//                       offset: const Offset(2, 0),
//                       blurRadius: controller.hovers[index] ? 20 : 10,),
//                 ]),
//             child: ProjectStack(index: index)
//         ));
//       },
//     );
//   }
// }



import 'package:brijesh_portfolio/view/projects/components/project_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectGrid extends StatelessWidget {
  final int? crossAxisCountOverride;
  final double? ratioOverride;

  ProjectGrid({super.key, this.crossAxisCountOverride, this.ratioOverride});

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Dynamic responsiveness
    final crossAxisCount = crossAxisCountOverride ??
        (screenWidth < 600
            ? 1
            : screenWidth < 900
                ? 2
                : 3);

    final ratio = ratioOverride ??
        (screenWidth < 600
            ? 1.6 // Mobile = shorter card
            : screenWidth < 900
                ? 1.2
                : 1.24); // Desktop = taller card

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
        mainAxisSpacing: defaultPadding * 1.5,
        crossAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(
                vertical: defaultPadding / 2,
                horizontal: defaultPadding / 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [Colors.pinkAccent, Colors.blue],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: const Offset(2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                ],
              ),
              child: ProjectStack(index: index),
            ));
      },
    );
  }
}
