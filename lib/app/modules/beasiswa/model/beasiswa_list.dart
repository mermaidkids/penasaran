class BeasiswaList {
  String judul;
  String imageAsset;

  BeasiswaList({
    required this.judul,
    required this.imageAsset,
  });
}

var beasiswaList = [
  BeasiswaList(
    judul: 'Linux System Administration',
    imageAsset: 'assets/images/beasiswa1.png',
  ),
  BeasiswaList(
    judul: 'Docker Fundamental',
    imageAsset: 'assets/images/beasiswa2.png',
  ),
  BeasiswaList(
    judul: 'Automation with Ansible',
    imageAsset: 'assets/images/beasiswa3.png',
  )
];
