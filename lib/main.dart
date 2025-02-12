import 'package:AgriIn/screen/about.dart';
import 'package:AgriIn/screen/diagnosis.dart';
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
  int _selectedIndex = 0;

  final List<Widget> _pages = [const DiagnosisScreen(), const AboutScreen()];

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
                backgroundColor: Color(0xff789DBC),
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
                      foregroundColor: Color(0xff789DBC),
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
                      backgroundColor: Color(0xff283739),
                      foregroundColor: Colors.white,
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
          backgroundColor: const Color(0xFFFFE3E3),
          appBar: AppBar(
              backgroundColor: Color(0xFF789DBC),
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
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.radar_outlined), label: 'Diagnosis'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info_outlined), label: 'Tentang'),
            ],
          ),
        ));
  }
}
