import 'package:flutter/material.dart';

class EdukasiScreen extends StatelessWidget {
  const EdukasiScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //Mengambil ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: screenHeight * 0.04),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            ElevatedButton(onPressed: (){}, child: Image.asset("assets/image/edu-bercakungu.jpg")),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){}, child: Text("coba1"))
           ],
          ),)
    ]));
  }
}
