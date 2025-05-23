class DataTreat {
  final List<double> cfValues = [0.75, 0.8, 0.0, 0.9, 0.7];

  /// Informasi lengkap mengenai setiap penyakit atau hama berdasarkan indeks label model:
  /// 0: Antraknosa
  /// 1: Bercak Ungu
  /// 2: Daun Sehat
  /// 3: Lalal dan Ulat
  /// 4: Moler

  final List<Map<String, dynamic>> penyakitData = [
    {
      "treatment": [
        "Fungisida Difenokonazol 250 EC, larutkan 1 ml per 1 liter air, semprot setiap 7 hari saat serangan muncul.",
        "Sanitasi lahan: cabut dan bakar tanaman terinfeksi untuk memutus siklus penyakit.",
        "Gunakan benih sehat dan lakukan rotasi tanaman selama minimal 1 musim (hindari menanam bawang berturut-turut di lahan yang sama)."
      ],
      "causes": [
        "Infeksi jamur Colletotrichum gloeosporioides, yang menyerang bagian batang dan daun, terutama pada fase pertumbuhan",
        "Kondisi lembap akibat curah hujan yang tinggi sangat mendukung perkembangan jamur.",
        "Jika sisa tanaman yang terinfeksi tidak dibersihkan, jamur dapat bertahan dan menyebar kembali pada musim berikutnya."
      ]
    },
    {
      "treatment": [
        "Semprot Klorotalonil 500 SC atau Mankozeb 80 WP dengan dosis 2 gram per 1 liter air, seminggu sekali saat gejala awal muncul.",
        "Atur jarak tanam minimal 10–15 cm agar sirkulasi udara lancar dan daun cepat kering setelah hujan/siram.",
        "Penyiraman sebaiknya dilakukan pagi hari untuk memastikan daun kering sebelum malam tiba. penyiraman sore hari sebaiknya dihindari."
      ],
      "causes": [
        "Jamur Alternaria porri menginfeksi daun dan memicu munculnya bercak ungu yang meluas, dikelilingi oleh tepian berwarna kuning.",
        "Perbedaan suhu drastis antara malam (dingin/lembap) dan siang (panas), mempercepat pertumbuhan jamur.",
        "Tanaman yang ditanam terlalu rapat menghambat aliran udara, sehingga meningkatkan kelembapan dan menyebabkan daun-daun tua cepat mengering."
      ]
    },
    {
      "treatment": [
        "Semprot Mankozeb atau Klorotalonil dosis 2 gr/liter air setiap 10 hari sebagai tindakan pencegahan.",
        "Beri pupuk NPK 16:16:16 sebanyak 1 sendok makan per 2 liter air, seminggu sekali untuk menjaga daya tahan tanaman.",
        "Lakukan pemeriksaan rutin 2–3 hari sekali untuk deteksi dini gejala penyakit."
      ],
      "causes": [
        "Tanaman bebas dari infeksi penyakit atau serangan hama.",
        "Lingkungan tumbuh optimal dan manajemen kebun yang baik."
      ]
    },
    {
      "treatment": [
        "Gunakan Abamektin 18 EC (insektisida sistemik), campurkan 1 ml per 2 liter air, semprot setiap 3–5 hari saat populasi tinggi.",
        "Pasang perangkap feromon untuk ulat dan yellow sticky trap untuk lalat.",
        "Membersihkan gulma dan daun yang telah mati secara rutin dapat membantu memutus rantai hidup hama"
      ],
      "causes": [
        "Hama berkembang pesat dalam lingkungan dengan kelembapan tinggi dan suhu yang hangat.",
        "Penggunaan pestisida yang tidak tepat sehingga membunuh musuh alami dan menyebabkan ledakan populasi hama.",
        "Lingkungan terlalu lembap dan banyak gulma, menciptakan tempat persembunyian dan bertelur bagi hama."
      ]
    },
    {
      "treatment": [
        "Siram pangkal tanaman dengan Karbendazim 50 WP, dosis 1 gram per liter air, ulangi 7 hari sekali.",
        "Pembuatan bedengan setinggi 20–30 cm dengan drainase yang baik dapat membantu menghindari genangan air di lahan.",
        "Lakukan rotasi tanaman dengan non-bawang (jagung, bayam, atau kacang-kacangan) selama 1 musim untuk menekan populasi jamur tanah."
      ],
      "causes": [
        "Jamur tanah Fusarium oxysporum menyerang dari akar dan mengakibatkan tanaman menjadi layu dan umbinya membusuk.",
        "Kondisi tanah yang tergenang atau memiliki drainase yang tidak baik dapat mempercepat penyebaran spora jamur.",
        "Penggunaan benih yang rentan atau sudah terkontaminasi memperbesar kemungkinan terjadinya infeksi pada tahap awal pertumbuhan."
      ]
    }
  ];
}
