import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: ListView(
          children: [
            Container(
              height: 326,
              color: Colors.amber,
            ),
            Container(
              height: 400,
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
                              onPressed: () async {},
                              child: Text("Take Foto")),
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
                              onPressed: () {},
                              child: Text("Detection"))
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
