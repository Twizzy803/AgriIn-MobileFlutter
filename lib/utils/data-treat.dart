class DataTreat {
  final List<double> cfValues = [0.8, 0.7, 0.0, 0.85, 0.9];

  /// Informasi lengkap mengenai setiap penyakit atau hama berdasarkan indeks label model:
  /// 0: Bercak Ungu
  /// 1: Moler
  /// 2: Daun Sehat
  /// 3: Hawar
  /// 4: Lalat dan Ulat

  final List<Map<String, dynamic>> penyakitData = [
    {
      "treatment": [
        "Gunakan fungisida berbasis mancozeb. Semprotkan sesuai dosis anjuran, biasanya 1–2 gram per liter air. Ulangi penyemprotan setiap 7–10 hari terutama saat cuaca lembab.",
        "Lakukan rotasi tanaman dengan tanaman non-inang seperti jagung, kacang tanah, atau padi.",
        "Pastikan drainase lahan baik untuk menghindari kelembaban tinggi yang disukai jamur."
      ],
      "causes": [
        "Kelembaban tinggi yang memicu pertumbuhan jamur Alternaria porri.",
        "Tanah becek atau genangan air yang memperburuk infeksi jamur.",
        "Menanam bawang merah terus-menerus tanpa rotasi tanaman."
      ]
    },
    {
      "treatment": [
        "Gunakan fungisida sistemik berbasis benomil untuk menghambat pertumbuhan jamur Fusarium.",
        "Perbaiki drainase lahan agar tidak tergenang air.",
        "Lakukan pergiliran tanaman dengan tanaman yang tidak rentan terhadap Fusarium."
      ],
      "causes": [
        "Infeksi jamur Fusarium oxysporum yang menyukai kondisi lembab.",
        "Drainase yang buruk dan tanah jenuh air.",
        "Kurangnya rotasi tanaman sehingga patogen menumpuk di tanah."
      ]
    },
    {
      "treatment": [
        "Tanaman dalam kondisi sehat, tidak perlu perawatan tambahan."
      ],
      "causes": [
        "Tanaman bebas dari infeksi penyakit atau serangan hama.",
        "Lingkungan tumbuh optimal dan manajemen kebun yang baik."
      ]
    },
    {
      "treatment": [
        "Gunakan antibiotik nabati seperti streptomisin.",
        "Lakukan sanitasi kebun secara rutin.",
        "Tanam varietas bawang merah yang tahan terhadap hawar."
      ],
      "causes": [
        "Infeksi bakteri penyebab hawar daun.",
        "Lingkungan lembab dan sanitasi kebun yang buruk.",
        "Penggunaan benih yang tidak sehat."
      ]
    },
    {
      "treatment": [
        "Gunakan insektisida biologis berbasis neem oil.",
        "Lakukan pemangkasan daun yang terserang.",
        "Pasang perangkap kuning (sticky trap) untuk mengurangi populasi lalat."
      ],
      "causes": [
        "Serangan hama seperti lalat penggorok daun dan ulat pemakan daun.",
        "Kurangnya pengendalian hama sejak dini.",
        "Kondisi kebun yang lembab dan terlalu rimbun memicu perkembangan hama."
      ]
    }
  ];
}
