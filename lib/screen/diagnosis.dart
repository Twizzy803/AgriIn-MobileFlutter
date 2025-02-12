import 'dart:io';
import 'package:flutter/material.dart';
import 'package:AgriIn/utils/imagePacker-controller.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(60, 0, 0, 0),
        body: Column(
          children: [
            Container(
              height: 325,
              color: const Color.fromARGB(60, 0, 0, 0),
              child: filePath != null
                  ? Image.file(filePath!)
                  : Center(
                      child: Icon(
                        Icons.wallpaper,
                        size: 150,
                      ),
                    ),
            ),
            Expanded(child:
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                color: Color(0xffF5F5F5),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 32.0, top: 32.0),
                    child: Row(
                      children: [
                        Text(
                          "Hai",
                          style: TextStyle(
                              color: Color(0xffA9C52F),
                              fontFamily: "Poppins",
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ", Teman",
                          style: TextStyle(
                              color: Color(0xff283739),
                              fontFamily: "Poppins",
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0, top: 32.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  foregroundColor: Color(0xFF16423C),
                                  backgroundColor: Color(0xff789DBC),
                                  fixedSize: Size(320, 50),
                                  elevation: 5,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () async {
                                await _imagePickerController
                                    .pickImageCamera(_onImagePacker);
                              },
                              child: Text("Kamera")),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  foregroundColor: Color(0xFF16423C),
                                  backgroundColor: Color(0xff789DBC),
                                  fixedSize: Size(320, 50),
                                  elevation: 5,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () async {
                                await _imagePickerController
                                    .pickImageGallery(_onImagePacker);
                              },
                              child: Text("Galeri"))
                        ]),
                  )
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
