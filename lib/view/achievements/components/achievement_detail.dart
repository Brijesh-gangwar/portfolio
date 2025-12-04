import 'package:flutter/material.dart';

import '../../../model/achievement_model.dart';
import '../../../res/constants.dart';
import '../../../view_model/responsive.dart';
import 'achievement_link.dart';

class AchievementsDetail extends StatelessWidget {
  final int index;
  const AchievementsDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.topCenter,child: Text(
          AchievementsList[index].title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),),
        Responsive.isMobile(context) ?  const SizedBox(height: defaultPadding/2,) : const SizedBox(height: defaultPadding,),
        Text(AchievementsList[index].details,style: const TextStyle(color: Colors.grey,height: 1.5),maxLines: size.width>700 && size.width< 750 ? 3:  size.width<470  ? 2  : size.width>600 && size.width<700 ?     6:  size.width>900 && size.width <1060 ? 6: 4 ,overflow: TextOverflow.ellipsis,),
        const Spacer(),
        AchievementsLinks(index: index,),
        const SizedBox(height: defaultPadding/2,),
      ],
    );
  }
}
