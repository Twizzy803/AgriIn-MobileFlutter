import 'dart:io';
import 'package:AgriIn/screen/hasil.dart';
import 'package:AgriIn/utils/riwayat-model.dart';
import 'package:flutter/material.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({super.key});

  @override
  State<RiwayatScreen> createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: riwayatList.isEmpty
          ? Center(
              child: Text("Belum ada riwayat diagnosis"),
            )
          : ListView.builder(
              itemCount: riwayatList.length,
              itemBuilder: (context, index) {
                final riwayat = riwayatList[riwayatList.length - 1 - index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.03,
                      vertical: screenHeight * 0.015),
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight * 0.19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff65B741),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                              horizontal: screenWidth * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.file(
                                    File(riwayat.imagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                              SizedBox(width: screenWidth * 0.03),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffC1F2B0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.02,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${riwayat.label}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth * 0.04,
                                            color: Color(0xff16423C)),
                                      ),
                                      Text(
                                        "Persentase: ${(riwayat.cfGabungan * 100).toStringAsFixed(2)}%",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth * 0.035,
                                            color: Color(0xff16423C)),
                                      ),
                                      Text(
                                        "Tanggal: ${riwayat.tanggal.day}-${riwayat.tanggal.month}-${riwayat.tanggal.year}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth * 0.035,
                                            color: Color(0xff16423C)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Tombol hapus di pojok kanan atas
                      // Positioned(
                      //   top: 0,
                      //   right: 0,
                      //   child: IconButton(
                      //     icon: Icon(Icons.delete, color: Colors.red[900]),
                      //     onPressed: () {
                      //       setState(() {
                      //         riwayatList.removeAt(index);
                      //       });
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                );
              }),
      floatingActionButton: riwayatList.isNotEmpty
          ? FloatingActionButton(
              backgroundColor: Colors.red[800],
              child: Icon(Icons.delete_forever, color: Colors.white),
              onPressed: () {
                // Tampilkan konfirmasi sebelum menghapus semua
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Hapus Semua Riwayat"),
                      content: Text(
                          "Apakah kamu yakin ingin menghapus semua riwayat?"),
                      actions: [
                        TextButton(
                          child: Text("Batal"),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        TextButton(
                          child: Text("Hapus",
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {
                            setState(() {
                              riwayatList.clear();
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            )
          : null,
    );
  }
}
