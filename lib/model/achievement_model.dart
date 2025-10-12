class AchievementModel {
  final String title;
  final String details; 
  final String date;
  final String link;

  AchievementModel(this.title,  this.details,this.date, this.link,);
}


List<AchievementModel> AchievementsList = [
  AchievementModel(
    'Winner of SIH 2023',
    'Secured 1st place in Smart India Hackathon 2023 organized by the Indian Central Government',
    '2023-12-19',
    'https://drive.google.com/drive/folders/14DGpeWxRpBYNFcGy-m3my3Ttcuq8r3HC',
  ),

  AchievementModel(
    'Finalist of SIH 2024',
    'Advanced to Grand Finals in 2024. Smart India Hackathon 2024 organized by the Indian Central Government',
    '2024-12',
    'https://drive.google.com/drive/folders/14DGpeWxRpBYNFcGy-m3my3Ttcuq8r3HC',
  ),

  AchievementModel(
  'osm_path_tracker',
  'Open Source Contribution - Published on pub.dev with 1000+ downloads. Enhanced GPS tracking precision by 30% through optimized stream handling.',
  '2025-07',
  'https://pub.dev/packages/osm_path_tracker',
),

];
