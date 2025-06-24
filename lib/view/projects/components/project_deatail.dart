// import 'package:flutter/material.dart';
// import 'package:brijesh_portfolio/view/projects/components/project_link.dart';

// import '../../../model/project_model.dart';
// import '../../../res/constants.dart';
// import '../../../view model/responsive.dart';

// class ProjectDetail extends StatelessWidget {
//   final int index;
//   const ProjectDetail({super.key, required this.index});
//   @override
//   Widget build(BuildContext context) {
//     var size=MediaQuery.sizeOf(context);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Align(alignment: Alignment.topCenter,child: Text(
//           projectList[index].name,
//           style: Theme.of(context)
//               .textTheme
//               .headlineSmall!
//               .copyWith(
//               color: Colors.white,
//               fontWeight: FontWeight.bold),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),),
//         Responsive.isMobile(context) ?  const SizedBox(height: defaultPadding/2,) : const SizedBox(height: defaultPadding,),
//         Text(projectList[index].description,style: const TextStyle(color: Colors.grey,height: 1.5),maxLines: size.width>700 && size.width< 750 ? 3:  size.width<470  ? 2  : size.width>600 && size.width<700 ?     6:  size.width>900 && size.width <1060 ? 6: 4 ,overflow: TextOverflow.ellipsis,),
//         const Spacer(),
//         ProjectLinks(index: index,),
//         const SizedBox(height: defaultPadding/2,),
//       ],
//     );
//   }
// }
// dhdjg
import 'package:flutter/material.dart';
import 'package:brijesh_portfolio/view/projects/components/project_link.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final project = projectList[index];
    final isMobile = Responsive.isMobile(context);

    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              project.name,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: defaultPadding),

          Text(
            project.description,
            style: TextStyle(
              color: Colors.white70,
              fontSize: isMobile ? 13 : 14,
              height: 1.5,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: defaultPadding / 2),


          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: project.bulletPoints.map((point) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '• ',
                          style: TextStyle(
                              color: Colors.tealAccent, fontSize: 14),
                        ),
                        Expanded(
                          child: Text(
                            point,
                            style: const TextStyle(
                              color: Colors.white60,
                              fontSize: 13.5,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),


          const SizedBox(height: defaultPadding / 2),

          ProjectLinks(index: index),
                    const SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}
