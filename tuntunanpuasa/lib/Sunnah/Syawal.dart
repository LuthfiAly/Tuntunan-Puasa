import 'package:flutter/material.dart';

class Syawal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Syawal",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: syawal1(),
    );
  }
}

class syawal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puasa Syawal"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://cdn2.tstatic.net/makassar/foto/bank/images/kapan-pelaksanaan-puasa-syawal.jpg",
            " Pengertian Puasa Syawal? \n\n Puasa syawal adalah puasa sunah yang dikerjakan sesudah hari raya Idul Fitri sebanyak 6 hari. Puasa sesudah hari raya ini hukumnya sunat, hal ini didasarkan hadits Abu Ayyub Al-Anshari r.a., ia berkata, Rasulullah shallallahu ‘alaihi wasallam bersabda: “Barangsiapa yang berpuasa (di bulan) Ramadhan, kemudian dia mengikutkannya dengan (puasa sunnah) enam hari di bulan Syawwal, maka (dia akan mendapatkan pahala) seperti puasa setahun penuh.” Pahala yang didapatkan melalui puasa syawal selama 6 hari ini adalah pahalanya setara dengan puasa 1 tahun secara terus menerus.",
          ),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String pengertian) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(urlGambar),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              pengertian,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
