// import 'package:flutter/material.dart';
// import 'package:brijesh_portfolio/res/constants.dart';
// import 'package:brijesh_portfolio/view/projects/components/title_text.dart';
// import '../../view_model/responsive.dart';

// class AboutMe extends StatelessWidget {
//   const AboutMe({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.all(defaultPadding),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const TitleText(prefix: 'About ', title: 'Me'),
//               const SizedBox(height: defaultPadding * 1.5),
//               Responsive(
//                 desktop: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildImageWithShadow(context),
//                     const SizedBox(width: defaultPadding * 2),
//                     Expanded(child: _buildInfoSection()),
//                   ],
//                 ),
//                 tablet: Column(
//                   children: [
//                     _buildImageWithShadow(context),
//                     const SizedBox(height: defaultPadding),
//                     _buildInfoSection(),
//                   ],
//                 ),
//                 mobile: Column(
//                   children: [
//                     _buildImageWithShadow(context),
//                     const SizedBox(height: defaultPadding),
//                     _buildInfoSection(),
//                   ],
//                 ),
//                 largeMobile: Column(
//                   children: [
//                     _buildImageWithShadow(context),
//                     const SizedBox(height: defaultPadding),
//                     _buildInfoSection(),
//                   ],
//                 ),
//                 extraLargeScreen: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildImageWithShadow(context),
//                     const SizedBox(width: defaultPadding * 2),
//                     Expanded(child: _buildInfoSection()),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildImageWithShadow(BuildContext context) {
//     return Container(
//       width: Responsive.isDesktop(context) ? 300 : 220,
//       height: Responsive.isDesktop(context) ? 400 : 300,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.9),
//             blurRadius: 30,
//             offset: const Offset(0, 20),
//           ),
//         ],
//         image: const DecorationImage(
//           image: AssetImage('assets/images/full_pic.jpg'),
//           fit: BoxFit.cover,
//           // colorFilter: ColorFilter.mode(
//           //   Colors.black38,
//           //   BlendMode.darken,
//           // ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Hello! I’m Brijesh Gangwar — a dedicated Flutter developer who transforms ideas into clean, scalable, and performant mobile applications. '
//           'My expertise spans across Flutter, Firebase, RESTful APIs, WebSockets, and GIS integration. With a strong grasp of state management (BLoC & Provider) and full-stack mobile architecture, '
//           'I build apps that not only look great but also deliver real value.\n\n'
//           'My work has helped optimize messaging systems by 120%, enable seamless video conferencing, and build collaborative GIS-based platforms used in real-world governance and city planning.\n\n'
//           'As the winner of Smart India Hackathon 2023, I’m passionate about innovation, team collaboration, and pushing tech boundaries to build digital products that impact lives.',
//           style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
//           textAlign: TextAlign.justify,
//         ),
//         const SizedBox(height: defaultPadding * 2),
//         const Text(
//           'Tech Stack',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         const SizedBox(height: defaultPadding),
//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             _skillChip('Flutter'),
//             _skillChip('Dart'),
//             _skillChip('Firebase'),
//             _skillChip('REST API'),
//             _skillChip('WebSockets'),
//             _skillChip('BLoC'),
//             _skillChip('Provider'),
//             _skillChip('Git'),
//             _skillChip('OSM'),
//             _skillChip('UI/UX Design'),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _skillChip(String label) {
//     return Chip(
//       label: Text(label),
//       backgroundColor: Colors.black,
//       labelStyle: const TextStyle(color: Colors.white),

//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:brijesh_portfolio/res/constants.dart';
import 'package:brijesh_portfolio/view/projects/components/title_text.dart';
import '../../view_model/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(prefix: 'About ', title: 'Me'),
              const SizedBox(height: defaultPadding * 1.5),
              Responsive(
                desktop: _buildInfoSection(),
                tablet: _buildInfoSection(),
                mobile: _buildInfoSection(),
                largeMobile: _buildInfoSection(),
                extraLargeScreen: _buildInfoSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    final baseStyle = TextStyle(
      fontSize: 16,
      color: Colors.white70,
      height: 1.6,
    );
    final boldStyle = baseStyle.copyWith(fontWeight: FontWeight.bold);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First, define your base and bold styles to keep the code clean.
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            // This is the default style for all the text spans.
            style: baseStyle,
            children: <TextSpan>[
              // Introduction paragraph
              const TextSpan(
                text:
                    'Hello! I’m Brijesh Gangwar — I am a Full-Stack Application Developer.I build complete applications using a modern tech stack. I leveraged Flutter and Dart to architect a scalable e-commerce frontend capable of supporting over 10,000 concurrent users. On the backend, I utilized Spring Boot and Java to engineer the secure, containerized service for my AI Assistant project.\n',
              ),

              // Bold heading + normal text
              TextSpan(
                text: 'API Integration & State Management: ',
                style: boldStyle,
              ),
              const TextSpan(
                text:
                    'I am proficient in creating robust mobile apps by integrating with services via REST APIs and managing state with BLoC and Provider. In my internship project, applying these skills was key to enhancing the app\'s features, which resulted in a 25% increase in user retention.\n',
              ),

              // Bold heading + normal text
              TextSpan(text: 'Backend & DevOps: ', style: boldStyle),
              const TextSpan(
                text:
                    'My backend expertise is centered on Spring Boot, which I used to build the logic for the AI Assistant project to handle OpenAI API requests securely. I ensured high availability by containerizing the application with Docker and deploying it on Render, achieving 99% uptime.\n',
              ),

              // Bold heading + normal text
              TextSpan(
                text: 'Open-Source & Real-Time Data: ',
                style: boldStyle,
              ),
              const TextSpan(
                text:
                    'I apply my deep knowledge of Dart to solve complex problems and contribute to the open-source community. I authored the osm_path_tracker package, where I engineered a real-time GPS tracking solution that enhanced path precision by 30% and has now achieved over 1,000 downloads on pub.dev.\n',
              ),

              // Bold heading + normal text
              TextSpan(text: 'Innovative Problem-Solving: ', style: boldStyle),
              const TextSpan(
                text:
                    'I apply my full range of technical skills to build award-winning solutions. My ability to effectively combine GIS, AI, and full-stack development was critical in developing our project for the Smart India Hackathon, leading to our team winning the 2023 competition and advancing to Grand Finals 2024.\n\n',
              ),
            ],
          ),
        ),
        const SizedBox(height: defaultPadding * 2),
        const Text(
          'Tech Stack',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: defaultPadding),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            _skillChip('Flutter'),
            _skillChip('Spring Boot'),
              _skillChip('C++'),
            _skillChip('Dart'),
            _skillChip('Java'),
              _skillChip('REST API'),
              _skillChip('Firebase'),
            _skillChip('WebSockets'),
            _skillChip('JPA/Hibernate'),
            _skillChip('Docker'),
            _skillChip('MongoDB'),
            _skillChip('MySQL'),
            _skillChip('Render'),
            _skillChip('Microservices'),
            _skillChip('CI/CD'),
            _skillChip('BLoC'),
            _skillChip('Provider'),
            _skillChip('Git'),
            _skillChip('OSM'),
            _skillChip('UI/UX Design'),
          ],
        ),
      ],
    );
  }

  // static Widget _skillChip(String label) {
  //   return Chip(
  //     label: Text(label),
  //     backgroundColor: Colors.black,
  //     labelStyle: const TextStyle(color: Colors.white),
  //     shape: StadiumBorder(
  //       side: BorderSide(color: Colors.white24),
  //     ),
  //   );
  // }

  Widget _skillChip(String label) {
    return _HoverChip(label: label);
  }
}

class _HoverChip extends StatefulWidget {
  final String label;

  const _HoverChip({required this.label});

  @override
  State<_HoverChip> createState() => _HoverChipState();
}

class _HoverChipState extends State<_HoverChip> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isHovered ? Colors.teal.withOpacity(0.3) : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isHovered ? Colors.tealAccent : Colors.white24,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(widget.label, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
