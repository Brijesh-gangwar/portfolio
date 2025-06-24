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

    // Smaller font size for narrow screens
    final double navFontSize = screenWidth < 500 ? 10 : 14;

    final navButtons = Row(
      children: [
        NavigationTextButton(
          onTap: () => controller.animateToPage(0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          text: 'Home',
          fontSize: navFontSize,
        ),
        NavigationTextButton(
          onTap: () => controller.animateToPage(1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          text: 'About',
          fontSize: navFontSize,
        ),
        NavigationTextButton(
          onTap: () => controller.animateToPage(2,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          text: 'Projects',
          fontSize: navFontSize,
        ),
        NavigationTextButton(
          onTap: () => controller.animateToPage(3,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          text: 'Certifications',
          fontSize: navFontSize,
        ),
        NavigationTextButton(
          onTap: () => controller.animateToPage(4,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn),
          text: 'Achievements',
          fontSize: navFontSize,
        ),
      ],
    );

    return screenWidth < 400
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 300),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: navButtons,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: navButtons,
          );
  }
}
