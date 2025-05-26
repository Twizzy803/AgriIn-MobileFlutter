import 'package:flutter/material.dart';

class molerScreen extends StatelessWidget {
  const molerScreen({super.key});

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
          "Moler",
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
                        "assets/image/edu_moler.jpg",
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
                            "1. Daun menguning dari ujung, kemudian menggulung dan mengering.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Pangkal daun berubah warna dan kering, warna cokelat kemerahan hingga kering.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Pertumbuhan terhambat dibandingkan dengan yang sehat.",
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
                            "1. Jamur tanah Fusarium oxysporum menyerang dari akar dan mengakibatkan tanaman menjadi layu dan umbinya membusuk.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Kondisi tanah yang tergenang atau memiliki drainase yang tidak baik dapat mempercepat penyebaran spora jamur.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Penggunaan benih yang rentan atau sudah terkontaminasi memperbesar kemungkinan terjadinya infeksi pada tahap awal pertumbuhan.",
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
                            "1. Siram pangkal tanaman dengan Karbendazim 50 WP, dosis 1 gram per liter air, ulangi 7 hari sekali.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Pembuatan bedengan setinggi 20–30 cm dengan drainase yang baik dapat membantu menghindari genangan air di lahan.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Lakukan rotasi tanaman dengan non-bawang (jagung, bayam, atau kacang-kacangan) selama 1 musim untuk menekan populasi jamur tanah.",
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
