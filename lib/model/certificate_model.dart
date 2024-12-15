class CertificateModel {
  final String name;
  final String organization;
  final String skills;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.skills,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Project Management Professional Certification',
    organization: 'Google',
    skills: 'Project initiation ,Planning , Execution, Agile Method, Apply on real Project',
  ),
   CertificateModel(
    name: 'One Year Diploma in IT',
    organization: 'Technical Board Peshawar',
    skills: 'Offline Database , Java , C++',
  ),
  CertificateModel(
    name: 'Flutter App Development',
    organization: 'Digital Skills for KP\nInitiative under UNDP',
    skills: 'Flutter , iOS Development\nAndroid Development, State Management',
  ),
  CertificateModel(
    name: 'MOS Specialist',
    organization: 'Mircosoft',
    skills: 'MS Office',
  ),
  CertificateModel(
    name: 'Mobile Site Certification',
    organization: 'Google',
    skills: 'Java, Android, App UI',
  ),
];
