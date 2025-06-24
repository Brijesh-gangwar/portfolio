import 'package:flutter/material.dart';
import 'package:brijesh_portfolio/view/certifications/certifications.dart';
import 'package:brijesh_portfolio/view/intro/introduction.dart';
import 'package:brijesh_portfolio/view/main/main_view.dart';
import 'package:brijesh_portfolio/view/projects/project_view.dart';

import '../about_me/about_me.dart';

import '../achievements/achievements_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      AboutMe(),
      ProjectsView(),
      Certifications(),
      Achievements(),
      
    ]);
  }
}
