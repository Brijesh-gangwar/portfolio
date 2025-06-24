// import 'package:flutter/material.dart';
// import 'package:brijesh_portfolio/view%20model/controller.dart';
// import 'package:brijesh_portfolio/view%20model/responsive.dart';

// import 'navigation_button.dart';

// class NavigationButtonList extends StatelessWidget {
//   const NavigationButtonList({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       tween: Tween(begin: 0.0, end: 1.0),
//       duration: const Duration(milliseconds: 200),
//       builder: (context, value, child) {
//         return Transform.scale(
//           scale: value,
//           child: Row(
//             children: [
//               NavigationTextButton(
//                 onTap: () {
//                   controller.animateToPage(
//                     0,
//                     duration: const Duration(milliseconds: 500),
//                     curve: Curves.easeIn,
//                   );
//                 },
//                 text: 'Home',
//               ),
//               if (!Responsive.isLargeMobile(context))
//                 NavigationTextButton(
//                   onTap: () {
//                     controller.animateToPage(
//                       1,
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.easeIn,
//                     );
//                   },
//                   text: 'About Me',
//                 ),
//               NavigationTextButton(
//                 onTap: () {
//                   controller.animateToPage(
//                     2,
//                     duration: const Duration(milliseconds: 500),
//                     curve: Curves.easeIn,
//                   );
//                 },
//                 text: 'Projects',
//               ),
//               NavigationTextButton(
//                 onTap: () {
//                   controller.animateToPage(
//                     3,
//                     duration: const Duration(milliseconds: 500),
//                     curve: Curves.easeIn,
//                   );
//                 },
//                 text: 'Certifications',
//               ),
//               NavigationTextButton(
//                 onTap: () {
//                   controller.animateToPage(
//                     4,
//                     duration: const Duration(milliseconds: 500),
//                     curve: Curves.easeIn,
//                   );
//                 },
//                 text: 'Achievements',
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:brijesh_portfolio/view%20model/controller.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        final navRow = Row(
          children: [
            NavigationTextButton(
              onTap: () {
                controller.animateToPage(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: 'Home',
            ),
            NavigationTextButton(
              onTap: () {
                controller.animateToPage(1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: 'About Me',
            ),
            NavigationTextButton(
              onTap: () {
                controller.animateToPage(2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: 'Projects',
            ),
            NavigationTextButton(
              onTap: () {
                controller.animateToPage(3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: 'Certifications',
            ),
            NavigationTextButton(
              onTap: () {
                controller.animateToPage(4,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              text: 'Achievements',
            ),
          ],
        );

        return Transform.scale(
          scale: value,
          child: screenWidth < 600 // ✅ updated from 500 → 600
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: navRow,
                )
              : navRow,
        );
      },
    );
  }
}
