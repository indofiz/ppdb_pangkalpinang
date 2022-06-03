class DatajalurSD {
  final String title;
  final String link;
  final List syarat;

  DatajalurSD({
    required this.title,
    required this.link,
    required this.syarat,
  });
}

List<DatajalurSD> listJalurSD = [
  DatajalurSD(
    title: 'Jalur Zonasi',
    link: 'https://ppdb.pangkalpinangkota.go.id/sdzsatu/siswa/Regis_casis.php',
    syarat: [
      'Kartu Keluarga (KK)',
      'Akte Lahir',
      'Ijazah TK/SKL TK kalau ada',
      'Foto 3x4'
    ]
  ),
  DatajalurSD(
    title: 'Jalur Afirmasi',
    link: 'https://ppdb.pangkalpinangkota.go.id/sdzsatu/siswa/Regis_casis.php',
    syarat: [
      'Kartu Keluarga (KK)',
      'Akte Lahir',
      'Ijazah TK/SKL TK kalau ada',
      'Foto 3x4',
      'Kartu Sosial (KIP/PKH/KKS/PKS)'
    ]
  ),
  DatajalurSD(
    title: 'Jalur Mutasi',
    link: 'https://ppdb.pangkalpinangkota.go.id/sdzsatu/siswa/Regis_casis.php',
    syarat: [
      'Kartu Keluarga (KK)',
      'Akte Lahir',
      'Ijazah TK/SKL TK kalau ada',
      'Foto 3x4',
      'Surat Mutasi Kerja Orang Tua.'
    ]
  )
];