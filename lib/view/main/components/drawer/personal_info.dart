import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        // AreaInfoText(title: 'Contact', text: '+918433267372'),
        AreaInfoText(title: 'Email', text: 'gangwarbrijesh87@gmail.com'),
        // AreaInfoText(title: 'LinkedIn', text: '@brijesh-gangwar'),
        // AreaInfoText(title: 'Github', text: '@brijesh-gangwar'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
