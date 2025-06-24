class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter & Dart - The Complete Guide',
    organization: 'Udemy',

    date: 'Sep 25, 2024',
    skills: 'Flutter . Dart , Firebase, REST API',
    credential:  'https://drive.google.com/drive/folders/14DGpeWxRpBYNFcGy-m3my3Ttcuq8r3HC',
  ),


];
