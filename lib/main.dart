import 'package:AgriIn/screen/about.dart';
import 'package:AgriIn/screen/diagnosis.dart';
import 'package:flutter/material.dart';
import 'package:AgriIn/screen/splashscreen.dart';
// import 'package:device_preview/device_preview.dart';

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
    return Scaffold(
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
    );
  }
}
