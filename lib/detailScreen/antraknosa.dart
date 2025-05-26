import 'package:flutter/material.dart';

class hawarScreen extends StatelessWidget {
  const hawarScreen({super.key});

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
          "Antraknosa",
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
                        "assets/image/edu_antraknosa.jpg",
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
                            "1. Muncul bintik-bintik kecil berwarna putih ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Bercak konsentris seperti cincin yang matang berisi konidium jingga kecokelatan.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Bercak-bercak cekung, pengerutan, berwarna cokelat pada bagian pusat.",
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
                            "1. Penyakit yang disebabkan oleh jamur Colletotrichum sp, infeksi ini biasanya terjadi di lingkungan yang lembap dan dapat menyebar melalui percikan air atau angin.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Intensitas hujan yang tinggi meningkatkan resiko penyebaran.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Luka pada daun atau batang akibat serangga, angin kencang, dan alat pertanian yang dapat memicu masuknya jamur antraknosa",
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
                            "1. Fungisida Difenokonazol 250 EC, larutkan 1 ml per 1 liter air, semprot setiap 7 hari saat serangan muncul.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Sanitasi lahan: cabut dan bakar tanaman terinfeksi untuk memutus siklus penyakit.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Gunakan benih sehat dan lakukan rotasi tanaman selama minimal 1 musim (hindari menanam bawang berturut-turut di lahan yang sama).",
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
