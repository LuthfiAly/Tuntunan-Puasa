import 'package:flutter/material.dart';

class Pengertia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Puasa",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: arti1(),
    );
  }
}

class arti1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Puasa"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://image.slidesharecdn.com/puasaramadhan-140909014253-phpapp02/95/puasa-ramadhan-dan-keutamaannya-2-638.jpg?cb=1410227106",
            " Puasa secara bahasa artinya menahan. maksudnya adalah menahan diri dari sesuatu yang membatalkan disertai dengan niat yang pelaksanaannya dimulai dari terbit fajar sampai tenggelamnya matahari. \n\n Adapun secara istilah, adalah menahan dari perkara-perkara yang membatalkan seperti makan minum, berkata kotor dan keji dan lain-lain. Puasa pada bulan ramadhan dilaksanakan dalam rangka untuk menunanikan ibadah kita kepada Allah subhanahu wa ta’ala tanah merupakan salah satu rukun Islam. maka wajib hukumnya melaksanakan puasa ramadan ini untuk menjadi muslim yang bertakwa. \n\n Puasa menurut ajaran agama Islam \n\n Rasulullah shallallahu alaihi wasallam telah mengajarkan kepada kita untuk melaksanakan puasa. kecuali pada hari-hari tertentu yang tidak boleh kita berpuasa dalamnya. Seperti pada hari idul fitri, idul adha dan hari tasyrik.",
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
