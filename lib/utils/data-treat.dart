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
    0.7, // CF untuk "moler"
    0.0, // CF untuk "daun sehat" (karena sehat tidak perlu diagnosa)
    0.85, // CF untuk "hawar"
    0.9, // CF untuk "lalat dan ulat"
  ];

  // Data perawatan berdasarkan indeks penyakit
  final List<List<String>> treatment = [
    [
      "Gunakan fungisida (pestisida yang digunakan untuk membunuh atau menghambat pertumbuhan jamur dan sporanya) berbasis mancozeb. Semprotkan sesuai dosis anjuran, biasanya 1-2 gram per liter air. Ulangi penyemprotan setiap 7–10 hari terutama saat cuaca lembab.",
      "Lakukan rotasi tanaman. Jangan menanam bawang merah terus-menerus di lahan yang sama. Ganti dengan tanaman non-inang seperti jagung, kacang tanah, atau padi.",
      "Pastikan drainase lahan baik. Tanah yang becek dan tergenang air memicu kelembaban tinggi, yang sangat disukai jamur untuk berkembang."
    ],
    [
      "Gunakan fungisida sistemik berbasis benomil. Benomil adalah fungisida sistemik yang bekerja dari dalam tanaman. Ia menyebar melalui jaringan dan menghambat pertumbuhan jamur penyebab moler.",
      "Perbaiki drainase lahan agar tidak tergenang air. Genangan air mempercepat perkembangan jamur di tanah dan memperburuk serangan moler.",
      "Lakukan pergiliran tanaman. Jangan menanam bawang merah terus-menerus di lahan yang sama. Ganti dengan tanaman yang tidak rentan terhadap Fusarium (seperti jagung, padi, atau kacang tanah)."
    ],
    ["Tanaman dalam kondisi sehat, tidak perlu perawatan tambahan."],
    [
    "Gunakan antibiotik nabati seperti streptomisin.",
    "Lakukan sanitasi (proses pembersihan lahan yang dapat menyebabkan gangguan pada tanaman) kebun secara rutin.",
    "Menanam jenis bawang merah (atau tanaman lain) yang sudah terbukti tahan terhadap serangan hawar sangat membantu mengurangi risiko infeksi."
    ],
    [
      "Gunakan insektisida biologis berbasis neem oil. Neem oil (minyak mimba) mengandung azadirachtin, senyawa alami yang bersifat, mengusir (repelen) serangga, menghambat pertumbuhan larva dan telur, mengganggu sistem makan dan reproduksi hama.",
      "Lakukan pemangkasan daun yang terserang.Daun yang rusak oleh lalat atau ulat bisa menjadi sumber penyebaran. Memotong dan membuangnya untuk mencegah penyebaran hama ke daun sehat, mengurangi tempat bertelur bagi lalat.",
      "Pasang perangkap kuning untuk lalat. Lalat sangat tertarik pada warna kuning terang. Perangkap ini biasanya berupa kertas/plastik berwarna kuning yang dilapisi lem (sticky trap), diletakkan di atas tanaman atau sekitar kebun."
    ]
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
