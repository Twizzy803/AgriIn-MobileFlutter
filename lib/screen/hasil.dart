import 'dart:io';
import 'package:AgriIn/utils/data-treat.dart';
import 'package:flutter/material.dart';
import 'package:tflite_v2/tflite_v2.dart';

class HasilScreen extends StatefulWidget {
  final File? file;

  const HasilScreen({Key? key, this.file}) : super(key: key);

  @override
  State<HasilScreen> createState() => _HasilScreenState();
}

class _HasilScreenState extends State<HasilScreen> {
  late DataTreat dt;
  List? _hasilPred;

  @override
  void initState() {
    super.initState();
    dt = DataTreat();
    _loadModel();
  }

// memuat model prediksi
  Future<void> _loadModel() async {
    String? res = await Tflite.loadModel(
      model: "assets/model/model15.tflite",
      labels: "assets/model/labels.txt",
      numThreads: 1,
      isAsset: true,
      useGpuDelegate: false,
    );
    _predictImage();
  }

  //melakukan prediksi pada gambar yang diterima
  Future<void> _predictImage() async {
    var prediction = await Tflite.runModelOnImage(
      path: widget.file!.path,
      imageMean: 0.0,
      imageStd: 225.0,
      numResults: 3,
      threshold: 0.2,
      asynch: true,
    );

    setState(() {
      _hasilPred = prediction;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double confidence = 0.0;

    if (_hasilPred != null && _hasilPred!.isNotEmpty) {
      var confValue = _hasilPred![0]['confidence'];
      if (confValue is double) {
        confidence = confValue;
      } else if (confValue is String) {
        confidence = double.tryParse(confValue) ?? 0.0;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF789DBC),
        toolbarHeight: 80,
        // Sesuaikan tinggi toolbar
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon tombol kembali
          onPressed: () {
            Navigator.pop(
                context); // Fungsi untuk kembali ke halaman sebelumnya
          },
        ),
        title: null,
        // Menyembunyikan title default
        flexibleSpace: Align(
          alignment: Alignment.center, // Menjaga gambar tetap di tengah
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            // Memberikan sedikit padding agar sejajar vertikal
            child: Image.asset(
              "assets/image/title.png",
              height: 130, // Menyesuaikan ukuran gambar
            ),
          ),
        ),
      ),
      body: _hasilPred == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hasil Prediksi:", style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // Memberikan border radius
                      border:
                          Border.all(color: Colors.grey), // Memberikan border
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
                  _hasilPred!.isNotEmpty
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Label: ${_hasilPred![0]['label']}",
                                style: TextStyle(fontSize: 18)),
                            SizedBox(height: 10),
                            Text(
                              "Confidence: ${(confidence * 100).toStringAsFixed(2)}%",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            Text(
                                "Rekomendasi Perawatan: ${dt.treatment[_hasilPred![0]['index']]}",
                                style: TextStyle(fontSize: 18)),
                          ],
                        )
                      : Text("Tidak ada hasil prediksi."),
                ],
              ),
            ),
    );
  }
}
