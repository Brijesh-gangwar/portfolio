// class Project {
//   final String name;
//   final String description;
//   final String image;
//   final String link;

//   Project(this.name, this.description, this.image, this.link);
// }

// List<Project> projectList = [
//   Project(
//     'Hi Connect',
//     'A real-time chat application built with Flutter and Firebase. Features secure authentication via Firebase Auth, end-to-end message encryption, and optimized data handling using Cloud Firestore for fast, scalable communication.',
//     'assets/images/chat.png',
//     'https://github.com/Brijesh-gangwar/hi_connect',
//   ),
//   Project(
//     'Closure Meet',
//     'A Flutter-based video conferencing app powered by ZegoCloud SDK. Includes real-time multi-user calls, Google Sign-In via Firebase Auth, and a responsive UI optimized for group collaboration.',
//     'assets/images/video_call.png',
//     'https://github.com/Brijesh-gangwar/closure-meet',
//   ),
//   Project(
//     'Sangam',
//     'An inter-departmental collaboration platform integrating GIS, task & resource management, and OpenStreetMap tracking. Built using Flutter, OSM, and real-time updates to identify conflicts and improve coordination efficiency.',
//     'assets/images/gis.png',
//     'https://github.com/Brijesh-gangwar/Sangam',
//   ),
//   Project(
//     'Learning Platform',
//     'A video-based learning app with review and feedback functionality. Includes user progress tracking using charts and engaging Flutter animations. Enhances learning experience through visual and interactive UI.',
//     'assets/images/learning.png',
//     'https://github.com/Brijesh-gangwar/learning_app',
//   ),
//   Project(
//     'FixMyRide',
//     'A roadside assistance Flutter app with real-time tracking, SOS mode, and OpenStreetMap navigation. Built for on-demand vehicle help and safety with offline support and modern UI.',
//     'assets/images/fixmyride.png',
//     'https://github.com/Brijesh-gangwar/FixMyRide',
//   ),

//     Project(
//     'Portfolio Website',
//     'A personal portfolio website built with Flutter Web. Showcases projects, skills, and contact information with responsive design and smooth animations.',
//     'assets/images/portfolio.png',
//     'https://github.com/Brijesh-gangwar/portfolio',
//     ),

//       Project(
//     'E-Business Store',
//     'An e-commerce Flutter app showcasing products with smooth animations, category filters, and user-friendly navigation. Optimized for performance and scalable backend integration.',
//     'assets/images/ecommerce.png',
//     'https://github.com/Brijesh-gangwar/e-business-app',
//   ),
//   Project(
//     'Weather Forecast App',
//     'A simple yet dynamic weather application using Flutter and Firebase. Supports live weather APIs, real-time database sync, and elegant UI design for daily forecast viewing.',
//     'assets/images/weather.png',
//     'https://github.com/Brijesh-gangwar/weather_app',
//   ),

//   Project(
//     'CRUD Task Manager',
//     'A task management application supporting full CRUD operations. Built with Firebase integration, local storage fallback, and real-time synchronization. Uses BLoC architecture for scalable state handling.',
//     'assets/images/task.png',
//     'https://github.com/Brijesh-gangwar/crud-app',
//   ),

// ];







class Project {
  final String name;
  final String description;
  final List<String> bulletPoints;
  final String image;
  final String link;

  Project({
    required this.name,
    required this.description,
    required this.bulletPoints,
    required this.image,
    required this.link,
  });
}

List<Project> projectList = [

Project(
  name: 'Kishaan Mitra',
  description: 'AI-powered agriculture assistant for fertilizer optimization and sustainability.',
  bulletPoints: [
    'Built AI-based system to recommend fertilizers by analyzing soil images.',
    'Integrated REST APIs and multilingual support for 23 Indian languages.',
    'Leveraged geographic data for precise fertilizer calculations and improved yield.',
  ],
  image: 'assets/images/gis.png',
  link: 'https://github.com/Brijesh-gangwar/kishaan_mitra',
),


Project(
  name: 'osm_path_tracker',
  description: 'OPEN SOURCE - Flutter package for precise GPS path tracking using OpenStreetMap.',
  bulletPoints: [
    'Real-time tracking with distance-based filtering.',
    '30% improved path accuracy and smooth rendering.',
    '1000+ downloads on pub.dev.',
  ],
  image: 'assets/images/osm_path_tracker.png',
  link: 'https://pub.dev/packages/osm_path_tracker',
),



  Project(
    name: 'AI Assistant',
    description: 'AI-powered chrome extension for research and productivity.',
    bulletPoints: [
      'Generate AI-powered summaries.',
      'Containerized Spring Boot backend deployed on Render via Docker',
      'Handle OpenAI API requests.'
    ],
    image: 'assets/images/gis.png',
    link: 'https://github.com/Brijesh-gangwar/Sangam',
  ),



    Project(
    name: 'Sangam',
    description: 'GIS-enabled collaboration tool for city-level governance.',
    bulletPoints: [
      'GIS & OpenStreetMap tracking.',
      'Department-wise task/resource management.',
      'Conflict detection and planning support.'
    ],
    image: 'assets/images/gis.png',
    link: 'https://github.com/Brijesh-gangwar/Sangam',
  ),

    Project(
    name: 'Closure Meet',
    description: 'A Flutter-based video conferencing app using ZegoCloud SDK.',
    bulletPoints: [
      'Real-time multi-user group calls.',
      'Google Sign-In via Firebase Auth.',
      'Cross-platform responsive UI.'
    ],
    image: 'assets/images/video_call.png',
    link: 'https://github.com/Brijesh-gangwar/closure-meet',
  ),

    Project(
    name: 'Learning Platform',
    description: 'Interactive learning app with video playback & tracking.',
    bulletPoints: [
      'Review & feedback system.',
      'Charts and progress analytics.',
      'Smooth animation using Flutter.'
    ],
    image: 'assets/images/learning.png',
    link: 'https://github.com/Brijesh-gangwar/learning_app',
  ),

  Project(
    name: 'Portfolio Website',
    description: 'Responsive portfolio website built using Flutter Web.',
    bulletPoints: [
      'Showcases projects & skills.',
      'Animations and responsive design.',
      'Hosted on Vercel with downloadable resume.'
    ],
    image: 'assets/images/portfolio.png',
    link: 'https://github.com/Brijesh-gangwar/portfolio',
  ),

  Project(
    name: 'Hi Connect',
    description: 'A real-time chat app built with Flutter and Firebase.',
    bulletPoints: [
      'Secure Firebase Authentication.',
      'End-to-end message encryption.',
      'Optimized data sync using Firestore.'
    ],
    image: 'assets/images/chat.png',
    link: 'https://github.com/Brijesh-gangwar/hi_connect',
  ),



  Project(
    name: 'FixMyRide',
    description: 'Roadside assistance app with OSM & live SOS tracking.',
    bulletPoints: [
      'OpenStreetMap integration for real-time tracking.',
      'Offline SOS mode & driver dispatch.',
      'Custom vehicle support UI.'
    ],
    image: 'assets/images/fixmyride.png',
    link: 'https://github.com/Brijesh-gangwar/FixMyRide',
  ),



  Project(
  name: 'E-Business Store',
  description: 'E-commerce app with smooth UI and product filtering.',
  bulletPoints: [
    'Clean and user-friendly interface with animations.',
    'Browse products by category with real-time filtering.',
    'Supports adding to cart and basic order flow.',
    'Optimized for performance and scalable backend.',
  ],
  image: 'assets/images/ecommerce.png',
  link: 'https://github.com/Brijesh-gangwar/e-business-app',
),

  // Project(
  //   name: 'CRUD Task Manager',
  //   description: 'Task manager app with local & cloud sync (Firebase).',
  //   bulletPoints: [
  //     'Supports full CRUD operations.',
  //     'BLoC pattern and local caching.',
  //     'Firebase integration with Realtime DB.'
  //   ],
  //   image: 'assets/images/task.png',
  //   link: 'https://github.com/Brijesh-gangwar/crud-app',
  // ),
];
