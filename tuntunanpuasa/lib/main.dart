import 'package:flutter/material.dart';
import 'package:tuntunanpuasa/Kaidah/Hukum.dart';
import 'package:tuntunanpuasa/Sunnah/SeninKamis.dart';
import 'package:tuntunanpuasa/Tampilan1.dart';
import 'package:tuntunanpuasa/Tampilan2.dart';
import 'package:tuntunanpuasa/Tampilan3.dart';
import 'package:tuntunanpuasa/Wajib/Ramadhan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var teksilmutajwid = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Penjelasan",
              style: TextStyle(fontSize: 35.0),
            ),
            Text(
              "Dan Macam Macam Puasa",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Tampilan1());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://blackrayah1453.files.wordpress.com/2013/02/fungsi-bulan-sebagai-satelit-bumi.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Kaidah Puasa",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Tampilan2());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://blackrayah1453.files.wordpress.com/2013/02/fungsi-bulan-sebagai-satelit-bumi.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Wajib",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Tampilan3());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJsECUuBiXTMGpRX3aFW5iQan8-xIrn6P5nPcwlMOs4mps56pKuA",
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Sunnah",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            )
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
