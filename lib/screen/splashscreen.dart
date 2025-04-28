import 'package:AgriIn/main.dart';
import 'package:AgriIn/utils/riwayat-model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToMainScreen();
  }

  Future<void> navigateToMainScreen() async {
    await Future.delayed(Duration(seconds: 4));
    await openHiveIfNeeded(); // membuka box jika diperlukan

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  Future<void> openHiveIfNeeded() async {
    if (!Hive.isBoxOpen('riwayatBox')) {
      await Hive.openBox<RiwayatModel>('riwayatBox');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff65B741),
        appBar: AppBar(
          title: RichText(
              text: TextSpan(
                  text: "Hallo",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      fontSize: 24,
                      color: Color(0xffFFE3E3)),
                  children: <TextSpan>[
                TextSpan(
                    text: "Teman",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 24,
                        color: Color(0xFF16423C)))
              ])),
          foregroundColor: Color(0xffFFE3E3),
          backgroundColor: Color(0xff65B741),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/image/logosplash.png',
                width: 650,
                height: 650,
              ),
            ),
            Spacer(),
            Text(
              "Ayo kita rawat menjadi unggulan",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Color(0xffFFE3E3),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 5),
            Text(
              "dan Menjadi petani sukses",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Color(0xff16423C),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 30),
          ],
        ));
  }
}
