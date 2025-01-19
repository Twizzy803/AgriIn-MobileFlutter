import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff283739),
        appBar: AppBar(
          title: const Text("AGRICure"),
          centerTitle: true,
          backgroundColor: const Color(0xFF283739),
          titleTextStyle: const TextStyle(
            color: Color(0xffA9C52F),
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 326,
              color: Colors.amber,
            ),
            Container(
              height: 415,
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xff283739),
                                  fixedSize: Size(320, 50),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xff283739),
                                  fixedSize: Size(320, 50),
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
