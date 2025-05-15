import 'dart:io';
import 'package:AgriIn/utils/data-treat.dart';
import 'package:AgriIn/utils/riwayat-model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tflite_v2/tflite_v2.dart';

List<RiwayatModel> riwayatList = [];

class HasilScreen extends StatefulWidget {
  final File? file;

  const HasilScreen({Key? key, this.file}) : super(key: key);

  @override
  State<HasilScreen> createState() => _HasilScreenState();
}

class _HasilScreenState extends State<HasilScreen> {
  late DataTreat dt;
  List<Map<String, dynamic>>? _hasilPred;

  @override
  void initState() {
    super.initState();
    dt = DataTreat();
    _loadModel();
  }

  // Memuat model prediksi
  Future<void> _loadModel() async {
    String? res = await Tflite.loadModel(
      model: "assets/model/model.tflite",
      labels: "assets/model/labels.txt",
      numThreads: 1,
      isAsset: true,
      useGpuDelegate: false,
    );
    _predictImage();
  }

  // Melakukan prediksi pada gambar yang diterima
  Future<void> _predictImage() async {
    var prediction = await Tflite.runModelOnImage(
      path: widget.file!.path,
      imageMean: 0.0,
      imageStd: 225.0,
      numResults: 3,
      threshold: 0.2,
      asynch: true,
    );

    if (prediction != null && prediction.isNotEmpty) {
      setState(() {
        _hasilPred = prediction.map<Map<String, dynamic>>((pred) {
          int index = pred['index']; // index penyakit dari model
          double confidence = pred['confidence']; // nilai MB dari YOLO

          // Hitung MD
          double md = 1 - confidence;

          // Hitung CF dasar (tanpa bobot pakar): CF = MB - MD = 2*MB - 1
          double cfDasar = (2 * confidence - 1).clamp(0.0, 1.0);

          // Ambil CF pakar dari data (hindari error jika index out of bounds)
          double cfPakar = (index < dt.cfValues.length)
              ? dt.cfValues[index]
              : 1.0;

          // Hitung CF gabungan: CF AI * CF Pakar
          double cfGabungan = (cfDasar * cfPakar).clamp(0.0, 1.0);

          return {
            ...pred,
            'cfDasar': cfDasar,
            'cfPakar': cfPakar,
            'cfGabungan': cfGabungan,
          };
        }).toList();

        // Simpan hasil tertinggi ke Hive (opsional)
        final topPred = _hasilPred![0];
        final box = Hive.box<RiwayatModel>('riwayatBox');
        box.add(RiwayatModel(
          imagePath: widget.file!.path,
          label: topPred['label'],
          confidence: topPred['confidence'],
          cfGabungan: topPred['cfGabungan'],
          tanggal: DateTime.now(),
        ));
      });
    }
  }

    @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double confidence = 0.0;
    double cfGabungan = 0.0;

    if (_hasilPred != null && _hasilPred!.isNotEmpty) {
      var confValue = _hasilPred![0]['confidence'];
      if (confValue is double) {
        confidence = confValue;
      } else if (confValue is String) {
        confidence = double.tryParse(confValue) ?? 0.0;
      }
      cfGabungan = _hasilPred![0]['cfGabungan'] ?? 0.0;
    }

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
        appBar: AppBar(
          backgroundColor: Color(0xFF65B741),
          toolbarHeight: 80,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xffC1F2B0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Hasil",
            style: TextStyle(
                fontFamily: 'Titan',
                color: Color(0xffC1F2B0),
                fontSize: screenWidth * 0.07),
          ),
        ),
        body: _hasilPred == null
            ? Center(child: CircularProgressIndicator())
            : ListView(children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.file(
                        widget.file!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFF6363),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.025,
                          vertical: screenHeight * 0.015),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PERHATIKAN PETUNJUK PENGGUNAAN KHUSUS PENGOBATAN !!!",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.033,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  _hasilPred!.isNotEmpty
                      ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Color(0xff65B741),
                                borderRadius:
                                BorderRadius.circular(10)),
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.025,
                                    vertical: screenHeight * 0.015),
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jenis Penyakit: ${_hasilPred![0]['label']}",
                                        style: TextStyle(
                                            fontSize:
                                            screenWidth * 0.035,
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      // Text(
                                      //   "Confidence: ${(confidence * 100).toStringAsFixed(2)}%",
                                      //   style: TextStyle(fontSize: 18),
                                      // ),
                                      Text(
                                        "Persentase Kerusakan: ${((_hasilPred !=
                                            null && _hasilPred!.isNotEmpty)
                                            ? (_hasilPred![0]['cfGabungan'] *
                                            100).toStringAsFixed(2)
                                            : '0')}%",
                                        style: TextStyle(
                                            fontSize:
                                            screenWidth * 0.035,
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ]))),
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff65B741),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.025,
                                vertical: screenHeight * 0.015),
                            child: Column(
                              children: [
                                Text(
                                  "Rekomendasi Perawatan: ",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.035,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: dt.treatment[
                                  _hasilPred![0]['index']]
                                      .map((treatment) =>
                                      Text(
                                        "• $treatment",
                                        style: TextStyle(
                                            fontSize:
                                            screenWidth *
                                                0.035,
                                            fontFamily:
                                            'Poppins',
                                            color:
                                            Colors.white),
                                        textAlign:
                                        TextAlign.justify,
                                      ))
                                      .toList(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ])
                      : Text("Tidak ada hasil prediksi.")
                ],
              )),
        ]));
  }
}
