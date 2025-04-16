import 'dart:io';
import 'package:AgriIn/screen/hasil.dart';
import 'package:flutter/material.dart';
import 'package:AgriIn/utils/imagePacker-controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DiagnosisScreen extends StatefulWidget {
  const DiagnosisScreen({super.key});

  @override
  State<DiagnosisScreen> createState() => _DiagnosisScreenState();
}

class _DiagnosisScreenState extends State<DiagnosisScreen> {
  File? filePath;
  final ImagePickerController _imagePickerController = ImagePickerController();

  void _onImagePacker(File? pickedFile) {
    setState(() {
      filePath = pickedFile;
    });
  }

  final List<String> imgList = [
    'assets/image/slider1.jpeg',
    'assets/image/slider2.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    //Mengambil ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: screenHeight * 0.3,
                // Sesuaikan tinggi slider
                autoPlay: true,
                // Auto-slide gambar
                enlargeCenterPage: true,
                // Memperbesar gambar tengah
                aspectRatio: 16 / 9,
                // Menjaga aspek rasio
                viewportFraction: 0.9,
              ),
              items: imgList.map((item) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: screenWidth * 0.9, // Sesuaikan lebar
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Color(0xff65B741),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.08, top: screenHeight * 0.04),
                      child: Row(
                        children: [
                          Text(
                            "Gunakan Dengan",
                            style: TextStyle(
                                color: Color(0xff16423C),
                                fontFamily: "Poppins",
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " Bijak",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: screenHeight * 0.05,
                          top: screenHeight * 0.02),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    textStyle: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth * 0.05),
                                    foregroundColor: Color(0xFF16423C),
                                    backgroundColor: Color(0xffC1F2B0),
                                    fixedSize: Size(screenWidth * 0.85, 60),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () async {
                                  await _imagePickerController
                                      .pickImageCamera(_onImagePacker);
                                  if (filePath != null) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HasilScreen(file: filePath),
                                        ));
                                  }
                                },
                                child: Text("Kamera")),
                            SizedBox(
                              height: screenHeight * 0.05,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    textStyle: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth * 0.05),
                                    foregroundColor: Color(0xFF16423C),
                                    backgroundColor: Color(0xffC1F2B0),
                                    fixedSize: Size(screenWidth * 0.85, 60),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () async {
                                  await _imagePickerController
                                      .pickImageGallery(_onImagePacker);
                                  if (filePath != null) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HasilScreen(file: filePath),
                                        ));
                                  }
                                },
                                child: Text("Galeri"))
                          ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
