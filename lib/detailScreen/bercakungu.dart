import 'package:flutter/material.dart';

class bercakunguScreen extends StatelessWidget {
  const bercakunguScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffC1F2B0),
      appBar: AppBar(
        backgroundColor: Color(0xFF65B741),
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          "Bercak Ungu",
          style: TextStyle(
              fontFamily: 'Titan',
              color: Color(0xffC1F2B0),
              fontSize: screenWidth * 0.07),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xffC1F2B0),
            )),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.025),
        child: Column(
          children: [
            // bagian gejala
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Row(
              children: [
                Expanded(
                  // Biar Row-nya fleksibel dan penuh
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/image/edu_bercakungu.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xff65B741),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.025,
                        vertical: screenHeight * 0.015),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gejala :",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          Text(
                            "1. Bercak kecil pada daun berwarna putih atau abu-abu.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Daun menguning dan layu.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Muncul infeksi berwarna ungu atau coklat pada batang dan umbi",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          )
                        ]))),
            // bagian penyebab
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xff65B741),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.025,
                        vertical: screenHeight * 0.015),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Penyebab :",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          Text(
                            "1. Jamur Alternaria porri menginfeksi daun dan memicu munculnya bercak ungu yang meluas, dikelilingi oleh tepian berwarna kuning.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Perbedaan suhu drastis antara malam (dingin/lembap) dan siang (panas), mempercepat pertumbuhan jamur.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Tanaman yang ditanam terlalu rapat menghambat aliran udara, sehingga meningkatkan kelembapan dan menyebabkan daun-daun tua cepat mengering.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          )
                        ]))),
            // bagian perawatan
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xff65B741),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.025,
                        vertical: screenHeight * 0.015),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Perawatan :",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          Text(
                            "1. Semprot Klorotalonil 500 SC atau Mankozeb 80 WP dengan dosis 2 gram per 1 liter air, seminggu sekali saat gejala awal muncul.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Atur jarak tanam minimal 10–15 cm agar sirkulasi udara lancar dan daun cepat kering setelah hujan/siram.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Penyiraman sebaiknya dilakukan pagi hari untuk memastikan daun kering sebelum malam tiba. penyiraman sore hari sebaiknya dihindari.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          )
                        ]))),
          ],
        ),
      )),
    );
  }
}
