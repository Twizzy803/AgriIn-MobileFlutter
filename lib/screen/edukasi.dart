import 'package:flutter/material.dart';

class EdukasiScreen extends StatelessWidget {
  const EdukasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Mengambil ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC1F2B0),
                    foregroundColor: Color(0xff16423C),
                    fixedSize: Size(screenWidth * 0.45, 250),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/image/edu_bercakungu.jpg",
                      height: screenHeight * 0.20,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bercak Ungu",
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  )
                ])),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC1F2B0),
                    foregroundColor: Color(0xff16423C),
                    fixedSize: Size(screenWidth * 0.45, 250),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    // ubah radius sesuai keinginan
                    child: Image.asset(
                      "assets/image/edu_hawar.jpg",
                      height: screenHeight * 0.20,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hawar",
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  )
                ])),
          ],
        ),
      ),
      // baris ke 2
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC1F2B0),
                    foregroundColor: Color(0xff16423C),
                    fixedSize: Size(screenWidth * 0.45, 250),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/image/edu_lalat.png",
                      height: screenHeight * 0.20,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lalat dan Ulat",
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  )
                ])),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC1F2B0),
                    foregroundColor: Color(0xff16423C),
                    fixedSize: Size(screenWidth * 0.45, 250),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    // ubah radius sesuai keinginan
                    child: Image.asset(
                      "assets/image/edu_moler.jpg",
                      height: screenHeight * 0.20,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Moler",
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  )
                ])),
          ],
        ),
      )
    ])));
  }
}
