import 'package:AgriIn/screen/about.dart';
import 'package:AgriIn/screen/diagnosis.dart';
import 'package:AgriIn/screen/edukasi.dart';
import 'package:AgriIn/screen/riwayat.dart';
import 'package:flutter/material.dart';
import 'package:AgriIn/screen/splashscreen.dart';

void main() {
  runApp(MyApp());
  // runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

// MainScreen / IndexScreen

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  List<Widget> get _pages => [
        const EdukasiScreen(),
        const DiagnosisScreen(),
        RiwayatScreen(key: ValueKey<int>(_selectedIndex)),
        const AboutScreen(),
      ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Color(0xff65B741),
                title: Text('Perhatian',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff283739),
                      fontWeight: FontWeight.bold,
                    )),
                content: Text(
                  'Apakah anda ingin menutup aplikasi?',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xff65B741),
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text("Tidak"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                      backgroundColor: Color(0xffC1F2B0),
                      foregroundColor: Color(0xFF283739),
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("Iya"),
                  ),
                ],
              );
            },
          );
          if (value != null) {
            return Future.value(value);
          } else {
            return Future.value(false);
          }
        },
        child: Scaffold(
          // backgroundColor: const Color(0xFFFBF6EE),
          appBar: AppBar(
              backgroundColor: Color(0xFF65B741),
              toolbarHeight: 80,
              title: Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    "assets/image/title.png",
                  ))
                ],
              )),
          body: IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xFF65B741),
            unselectedItemColor: Color(0xff888787),
            backgroundColor: Color(0xffC1F2B0),
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_outlined), label: 'Edukasi'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.radar_outlined), label: 'Diagnosis'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'Riwayat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info_outlined), label: 'Tentang'),
            ],
          ),
        ));
  }
}
