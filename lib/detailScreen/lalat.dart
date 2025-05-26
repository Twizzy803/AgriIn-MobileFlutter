import 'package:flutter/material.dart';

class lalatScreen extends StatelessWidget {
  const lalatScreen({super.key});

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
          "Lalat dan Ulat",
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
                        "assets/image/edu_lalat.png",
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
                            "1. Terdapat goresan putih hingga transparan yang berliku-liku sepanjang daun.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Terdapat larva berwarna putih kekuningan yang berada didalam goresan atau tambang daun.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Daun menggulung",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "4. Terdapat lubang pada daun",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "5. Terdapat kotoran ulat yang berbentuk butiran kecil berwarna hitam atau coklat gelap.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "6. Terdapat ulat berwarna hijau, abu-abu, atau coklat dan bersembunyi di pangkal daun",
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
                            "1. Hama berkembang pesat dalam lingkungan dengan kelembapan tinggi dan suhu yang hangat.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Penggunaan pestisida yang tidak tepat sehingga membunuh musuh alami dan menyebabkan ledakan populasi hama.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Lingkungan terlalu lembap dan banyak gulma, menciptakan tempat persembunyian dan bertelur bagi hama.",
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
                            "1. Gunakan Abamektin 18 EC (insektisida sistemik), campurkan 1 ml per 2 liter air, semprot setiap 3–5 hari saat populasi tinggi.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "2. Pasang perangkap feromon untuk ulat dan yellow sticky trap untuk lalat.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.white),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "3. Membersihkan gulma dan daun yang telah mati secara rutin dapat membantu memutus rantai hidup hama",
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
