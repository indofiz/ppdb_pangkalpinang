class DataZonaSMP {
  final String title;
  final dynamic link;
  final String kecamatan;

  DataZonaSMP({
    required this.title,
    required this.link,
    required this.kecamatan,
  });
}

List<DataZonaSMP> listZonaSmp = [
  DataZonaSMP(
    title: 'ZONA SATU SMP',
    link: 'https://ppdb.pangkalpinangkota.go.id/',
    kecamatan: 'KECAMATAN RANGKUI'
  ),
  DataZonaSMP(
    title: 'ZONA DUA SMP',
    link: 'https://ppdb.pangkalpinangkota.go.id/',
    kecamatan: 'KECAMATAN GIRIMAYA'
  ),
  DataZonaSMP(
    title: 'ZONA TIGA SMP',
    link: 'https://ppdb.pangkalpinangkota.go.id/',
    kecamatan: 'KECAMATAN BUKIT INTAN'
  ),
  DataZonaSMP(
    title: 'ZONA EMPAT SMP',
    link: 'https://ppdb.pangkalpinangkota.go.id/smppkpsatu/index.php',
    kecamatan: 'GERUNGGANG & TAMAN SARI'
  ),
  DataZonaSMP(
    title: 'ZONA LIMA SMP',
    link: 'https://ppdb.pangkalpinangkota.go.id/smppkpsatu/index.php',
    kecamatan: 'KECAMATAN GABEK'
  ),
  DataZonaSMP(
    title: 'ZONA ENAM SMP',
    link: 'https://ppdb.pangkalpinangkota.go.id/smppkpsatu/index.php)',
    kecamatan: 'KECAMATAN PANGKALBALAM'
  ),
];