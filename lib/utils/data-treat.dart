class DataTreat {
  // Nilai bobot tingkat keyakinan terhadap penyakit dan hama yang berpotensi membuat tanaman gagal panen
  // 1    "Sangat berpotensi gagal panen"
  // 0.8  "Berpotensi gagal panen"
  // 0.6  "Cukup berpotensi gagal panen"
  // 0.4  "Kurang berpotensi gagal panen"
  // 0.2  "Tidak tahu berpotensi gagal panen atau tidak"
  // 0    "Tidak berpotensi gagal panen"
  /// note: Nilai bobot ini bukan menjadi patokan pasti, karena data ini didapat dari tingkat keyakinan-
  /// para Pakar dan Petani yang sudah berpengalaman dalam merawat tanaman bawang merah. setiap penyakit pasti ada dampaknya besar maupun kecil
  /// sebaiknya selagi masih bisa diobati segera diobati jangan menunggu menjadi parah terlebih dahulu.


  // CF dari pakar untuk setiap penyakit (harus sesuai dengan label model)
  final List<double> cfValues = [
    0.8, // CF untuk "bercak ungu"
    0.7, // CF untuk "hawar"
    0.9, // CF untuk "lalat dan ulat"
    0.85, // CF untuk "moler"
    0.0, // CF untuk "daun sehat" (karena sehat tidak perlu diagnosa)
  ];

  // Data perawatan berdasarkan indeks penyakit
  final List<List<String>> treatment = [
    [
      "Gunakan fungisida berbasis mancozeb.",
      "Lakukan rotasi tanaman.",
      "Pastikan drainase lahan baik."
    ],
    [
      "Gunakan antibiotik nabati seperti streptomisin.",
      "Lakukan sanitasi kebun secara rutin.",
      "Gunakan varietas tahan penyakit."
    ],
    [
      "Gunakan insektisida biologis berbasis neem oil.",
      "Lakukan pemangkasan daun yang terserang.",
      "Pasang perangkap kuning untuk lalat."
    ],
    [
      "Gunakan fungisida sistemik berbasis benomil.",
      "Perbaiki drainase lahan agar tidak tergenang air.",
      "Lakukan pergiliran tanaman."
    ],
    ["Tanaman dalam kondisi sehat, tidak perlu perawatan tambahan."],
  ];
}

// List treatment = [
//   '''
//     - Terdapat Bercak Ungu
//     - Pangkas bagian yang terinfeksi\n
//     - Jaga kelembaban sekitar tanaman\n
//     - Gunakan Fungida\n
//     - Gunakan pupuk berstandar SNI\n
//   ''',
//   '''
//     -terdapat Hawar
//   ''',
//   '''
//     - Terkena hama lalat dan ulat
//     - Pangkas bagian yang terinfeksi\n
//     - Siram di pagi hari\n
//     - Jaga sirkulasi udara\n
//     - Gunakan pupuk berstandar SNI\n
//   ''',
//   '''
//     - terdapat moler
//   ''',
//   '''
//     Semuanya oke, tanaman Anda sehat☺
//   ''',
// ];
