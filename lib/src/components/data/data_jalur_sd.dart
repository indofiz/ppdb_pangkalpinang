class DatajalurSD {
  final String title;
  final dynamic link;
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
    link: Uri.parse('https://ppdb.pangkalpinangkota.go.id/sdzsatu/siswa/Regis_casis.php'),
    syarat: [
      'Kartu Keluarga (KK)',
      'Akte Lahir',
      'Ijazah TK/SKL TK kalau ada',
      'Foto 3x4'
    ]
  ),
  DatajalurSD(
    title: 'Jalur Afirmasi',
    link: Uri.parse('https://ppdb.pangkalpinangkota.go.id/sdzsatu/siswa/Regis_casis.php'),
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
    link: Uri.parse('https://ppdb.pangkalpinangkota.go.id/sdzsatu/siswa/Regis_casis.php'),
    syarat: [
      'Kartu Keluarga (KK)',
      'Akte Lahir',
      'Ijazah TK/SKL TK kalau ada',
      'Foto 3x4',
      'Surat Mutasi Kerja Orang Tua.'
    ]
  )
];