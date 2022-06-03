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
    link: 'https://ppdb.pangkalpinangkota.go.id/sdzsatu/index.php',
    kecamatan: 'KECAMATAN RANGKUI'
  ),
  DataZonaSD(
    title: 'ZONA DUA SD',
    link: 'https://ppdb.pangkalpinangkota.go.id/sdzdua/index.php',
    kecamatan: 'KECAMATAN GIRIMAYA'
  ),
  DataZonaSD(
    title: 'ZONA TIGA SD',
    link: 'https://ppdb.pangkalpinangkota.go.id/sdztiga',
    kecamatan: 'KECAMATAN BUKIT INTAN'
  ),
  DataZonaSD(
    title: 'ZONA EMPAT SD',
    link: 'https://www.kota-pangkalpinang.id/sdzempat/index.php',
    kecamatan: 'GERUNGGANG & TAMAN SARI'
  ),
  DataZonaSD(
    title: 'ZONA LIMA SD',
    link: 'https://www.kota-pangkalpinang.id/sdzlima/index.php',
    kecamatan: 'KECAMATAN GABEK'
  ),
  DataZonaSD(
    title: 'ZONA ENAM SD',
    link: 'https://www.kota-pangkalpinang.id/sdzenam/index.php',
    kecamatan: 'KECAMATAN PANGKALBALAM'
  ),
];