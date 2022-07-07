class DatajalurSmp {
  final String title;
  final String link;
  final List syarat;

  DatajalurSmp({
    required this.title,
    required this.link,
    required this.syarat,
  });
}

List<DatajalurSmp> listJalurSmp = [
  DatajalurSmp(
      title: 'Jalur Zonasi',
      link: 'https://ruangsiswa.my.id/smppkpsatu/siswa/Regis_casis.php',
      syarat: ['Kartu Keluarga (KK)', 'Akte Lahir', 'SKHU/SKL', 'Foto 3x4']),
  DatajalurSmp(
      title: 'Jalur Prestasi',
      link: 'https://ruangsiswa.my.id/smppkpsatu/siswa/Regis_casis.php',
      syarat: [
        'Kartu Keluarga (KK)',
        'Akte Lahir',
        'SKHU/SKL',
        'Foto 3x4',
        'Sertifikat Prestasi Non Akademik',
        'Surat Keterangan Prestasi Akademik'
      ]),
  DatajalurSmp(
      title: 'Jalur Afirmasi',
      link: 'https://ruangsiswa.my.id/smppkpsatu/siswa/Regis_casis.php',
      syarat: [
        'Kartu Keluarga (KK)',
        'Akte Lahir',
        'SKHU/SKL',
        'Foto 3x4',
        'Kartu Sosial (KIP/PKH/KKS/PKS)',
      ]),
  DatajalurSmp(
      title: 'Jalur Mutasi',
      link: 'https://ruangsiswa.my.id/smppkpsatu/siswa/Regis_casis.php',
      syarat: [
        'Kartu Keluarga (KK)',
        'Akte Lahir',
        'SKHU/SKL',
        'Foto 3x4',
        'Surat Mutasi Kerja Orang Tua.'
      ])
];
