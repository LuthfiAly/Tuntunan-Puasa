import 'package:flutter/material.dart';
import 'package:tuntunanpuasa/Kaidah/Batal.dart';
import 'package:tuntunanpuasa/Kaidah/Hukum.dart';
import 'package:tuntunanpuasa/Kaidah/Pengertia.dart';

class Tampilan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kaidah Puasa",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tampilan1(),
    );
  }
}

class tampilan1 extends StatelessWidget {
  var teksilmutajwid = TextStyle(
    fontFamily: 'arial',
    color: Colors.white,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kedudukan Puasa Dalam Islam"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                openNewScreen(context, Pengertia());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://media.istockphoto.com/photos/white-contour-fork-spoon-knife-on-black-background-picture-id693579614?k=6&m=693579614&s=612x612&w=0&h=TbQxP4tX_265ZqTX3KAcyOYfBPe9_SMgI4j0Aa1v4B4="),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Pengertian Puasa",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Hukum());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://media.istockphoto.com/photos/white-contour-fork-spoon-knife-on-black-background-picture-id693579614?k=6&m=693579614&s=612x612&w=0&h=TbQxP4tX_265ZqTX3KAcyOYfBPe9_SMgI4j0Aa1v4B4="),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Rukun Puasa",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Batal());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://media.istockphoto.com/photos/white-contour-fork-spoon-knife-on-black-background-picture-id693579614?k=6&m=693579614&s=612x612&w=0&h=TbQxP4tX_265ZqTX3KAcyOYfBPe9_SMgI4j0Aa1v4B4="),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Hal Yg Dapat Membatalkan Puasa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontFamily: 'arial',
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.luminosity),
            image: NetworkImage(imageUrl)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
