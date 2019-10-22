import 'package:flutter/material.dart';

class Hukum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rukun Puasa",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: hukum1(),
    );
  }
}

class hukum1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rukun Puasa"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://wisatanabawi.com/wp-content/uploads/2019/07/Rukun-Puasa.jpg",
            "1. Niat. \n\n Seseorang yang hendak berpuasa harus berniat untuk berpuasa saat malam hari sebelum puasa dimulai. Tanpa adanya niat maka puasa seseorang tidaklah sah. Hal ini dikarenakan niat adalah suatu hal yang penting dalam melakukan ibadah dan ibadah tersebut tergantung pada niatnya sebagaimana yang dijelaskan dalam dalil-dalil berikut ini: وَمَآ أُمِرُوٓا۟ إِلَّا لِيَعْبُدُوا۟ ٱللَّهَ مُخْلِصِينَ لَهُ ٱلدِّينَ حُنَفَآءَ وَيُقِيمُوا۟ ٱلصَّلَوٰةَ وَيُؤْتُوا۟ ٱلزَّكَوٰةَ ۚ وَذَٰلِكَ دِينُ ٱلْقَيِّمَةِ \n\n 2.Menahan Diri dari Hal-hal yang Membatalkan Puasa \n\n Saat berpuasa seseorang harus menahan diri dari segala sesuatu yang dapat membatalkan puasanya sebagaimana yang disebutkan dalam Firman Allah pada surat Albaqarah ayat 187: بَيَّنَ لَكُمُ الْخَيْطُ الْأَبْيَضُ مِنَ الْخَيْطِ الْأَسْوَدِ مِنَ الْفَجْرِ فَالْآنَ بَاشِرُوهُنَّ وَابْتَغُوا مَا آَتَبَ اللَّهُ لَكُمْ وَآُلُوا وَاشْرَبُوا حَتَّىٰ يَتَ مَّ أَتِمُّوا الصِّيَامَ إِلَى اللَّيْلِ",
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
