import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../model/achievement_model.dart';

class AchievementsLinks extends StatelessWidget {
  final int index;
  const AchievementsLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrl(Uri.parse(AchievementsList[index].link));
      },
      child: const Text(
        'View',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );
  }
}
