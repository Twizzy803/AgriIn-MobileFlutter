import 'package:AgriIn/detailScreen/bercakungu.dart';
import 'package:AgriIn/detailScreen/hawar.dart';
import 'package:AgriIn/detailScreen/lalat.dart';
import 'package:AgriIn/detailScreen/moler.dart';
import 'package:flutter/material.dart';

class EdukasiScreen extends StatelessWidget {
  const EdukasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Mengambil ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xffC1F2B0),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03, vertical: screenHeight * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return bercakunguScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff65B741),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Column(children: [
                          SizedBox(
                            height: screenHeight * 0.015,
                          ),
                          AspectRatio(
                              aspectRatio: 1 / 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/image/edu_bercakungu.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            "Bercak Ungu",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          )
                        ]))),
                // button kanan berikutnya
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return hawarScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff65B741),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Column(children: [
                          SizedBox(
                            height: screenHeight * 0.015,
                          ),
                          AspectRatio(
                              aspectRatio: 1 / 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/image/edu_hawar.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            "Hawar",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          )
                        ]))),
              ],
            ),
          ),
          // baris ke 2
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return lalatScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff65B741),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Column(children: [
                          SizedBox(
                            height: screenHeight * 0.015,
                          ),
                          AspectRatio(
                              aspectRatio: 1 / 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/image/edu_lalat.png",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            "Lalat dan Ulat",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          )
                        ]))),
                // button kanan berikutnya
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return molerScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff65B741),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Column(children: [
                          SizedBox(
                            height: screenHeight * 0.015,
                          ),
                          AspectRatio(
                              aspectRatio: 1 / 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/image/edu_moler.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            "Moler",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          )
                        ]))),
              ],
            ),
          ),
        ])));
  }
}
