import 'package:flutter/material.dart';
import 'package:tuntunanpuasa/Wajib/Kafarat.dart';
import 'package:tuntunanpuasa/Wajib/Nazar.dart';
import 'package:tuntunanpuasa/Wajib/Qada.dart';
import 'package:tuntunanpuasa/Wajib/Ramadhan.dart';

class Tampilan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Wajib",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tampilan2(),
    );
  }
}

class tampilan2 extends StatelessWidget {
  var teksilmutajwid = TextStyle(
    fontFamily: 'arial',
    color: Colors.white,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Macam Macam Puasa Wajib"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                openNewScreen(context, Ramadhan());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-vector/white-dish-utensils-set-vector-illustration_53876-62217.jpg?size=338&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Ramadhan",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Nazar());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-vector/white-dish-utensils-set-vector-illustration_53876-62217.jpg?size=338&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Nazar",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Kafarat());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-vector/white-dish-utensils-set-vector-illustration_53876-62217.jpg?size=338&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Kafarat",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Qada());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-vector/white-dish-utensils-set-vector-illustration_53876-62217.jpg?size=338&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Puasa Qada'",
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
