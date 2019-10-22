import 'package:flutter/material.dart';
import 'package:tuntunanpuasa/Sunnah/SeninKamis.dart';
import 'package:tuntunanpuasa/Sunnah/Syawal.dart';

class Tampilan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Sunnah",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tampilan3(),
    );
  }
}

class tampilan3 extends StatelessWidget {
  var teksilmutajwid = TextStyle(
    fontFamily: 'arial',
    color: Colors.white,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Macam Macam Puasa Sunnah"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                openNewScreen(context, SeninKamis());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://ak4.picdn.net/shutterstock/videos/12181394/thumb/9.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Senin Dan Kamis",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Syawal());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://ak4.picdn.net/shutterstock/videos/12181394/thumb/9.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Syawwal",
                        style: teksilmutajwid,
                      ),
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
