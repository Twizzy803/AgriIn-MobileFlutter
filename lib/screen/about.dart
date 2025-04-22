import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Mengambil ukuran layar
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Color(0xffC1F2B0),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "AgriIn",
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "AgriIn merupakan aplikasi pintar yang dirancang untuk membantu petani muda dan petani pemula dalam membudidayakan tanaman bawang merah secara modern. Aplikasi ini memanfaatkan teknologi AI berbasis kamera untuk mendeteksi penyakit atau hama yang menyerang tanaman bawang merah, terutama yang terlihat pada bagian daun.",
                  style: TextStyle(
                      fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 15),
                Text(
                  "Dengan hanya mengambil foto tanaman, AgriIn akan:",
                  style: TextStyle(
                      fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                // Bullet list
                Text(
                  "Mendeteksi gejala penyakit atau hama berdasarkan ciri fisik pada daun",
                  style: TextStyle(
                      fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "memberikan informasi nama penyakit/hama",
                  style: TextStyle(
                      fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "menampilkan tingkat keparahan yang terdeteksi",
                  style: TextStyle(
                      fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "memberikan saran penanganan atau solusi untuk membantu petani mengatasi masalah tersebut.",
                  style: TextStyle(
                      fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 15),
                Text(
                    "AgriIn hadir sebagai langkah awal menuju pertanian yang cerdas, mudah, dan ramah pemula, khususnya dalam membudidayakan bawang merah yang sehat dan berkualitas.",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035, fontFamily: "Poppins"),
                    textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ]));
  }
}
