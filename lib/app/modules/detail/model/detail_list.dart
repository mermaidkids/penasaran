class DetailList {
  String judul;
  String imageAsset;

  DetailList({
    required this.judul,
    required this.imageAsset,
  });
}

var detailList = [
  DetailList(
    judul: 'Linux System Administration',
    imageAsset: 'assets/images/bootcamp1.png',
  ),
  DetailList(
    judul: 'Docker Fundamental',
    imageAsset: 'assets/images/bootcamp2.png',
  ),
  DetailList(
    judul: 'Automation with Ansible',
    imageAsset: 'assets/images/bootcamp3.png',
  )
];
