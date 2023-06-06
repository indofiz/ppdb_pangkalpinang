class DataZonaSD {
  final String title;
  final dynamic link;
  final String kecamatan;

  DataZonaSD({
    required this.title,
    required this.link,
    required this.kecamatan,
  });
}

List<DataZonaSD> listZonaSD = [
  DataZonaSD(
      title: 'ZONA SATU SD',
      link: Uri.parse('https://ruangsiswa.my.id/sdzsatu/index.php'),
      kecamatan: 'KECAMATAN RANGKUI'),
  DataZonaSD(
      title: 'ZONA DUA SD',
      link: Uri.parse('https://ruangsiswa.my.id/sdzdua/index.php'),
      kecamatan: 'KECAMATAN GIRIMAYA'),
  DataZonaSD(
      title: 'ZONA TIGA SD',
      link: Uri.parse('https://ruangsiswa.my.id/sdztiga/index.php'),
      kecamatan: 'KECAMATAN BUKIT INTAN'),
  DataZonaSD(
      title: 'ZONA EMPAT SD',
      link: Uri.parse('https://ruangsiswa.my.id/sdzempat/index.php'),
      kecamatan: 'GERUNGGANG & TAMAN SARI'),
  DataZonaSD(
      title: 'ZONA LIMA SD',
      link: Uri.parse('https://ruangsiswa.my.id/sdzlima/index.php'),
      kecamatan: 'KECAMATAN GABEK'),
  DataZonaSD(
      title: 'ZONA ENAM SD',
      link: Uri.parse('https://ruangsiswa.my.id/sdzenam/index.php'),
      kecamatan: 'KECAMATAN PANGKALBALAM'),
];
