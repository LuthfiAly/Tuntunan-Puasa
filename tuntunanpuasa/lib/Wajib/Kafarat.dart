import 'package:flutter/material.dart';

class Kafarat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Kafarat",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: kafarat1(),
    );
  }
}

class kafarat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puasa Kafarat"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://2.bp.blogspot.com/-n4bteBT04Ls/W6t94BXScGI/AAAAAAAADrM/saIVQU9hS_AtSlJ2LiaW1dv7mIHH_8tRQCLcBGAs/s1600/pengertian%2Bpuasa%2Bkafarat1.jpg",
            " Pengertian Puasa Kafarat \n\n Puasa kafarat merupakan puasa yang wajib selain dari puasa Ramadhan. Puasa ini adalah puasa yang diperuntukkan untuk menebus dosa karena perbuatannya yang melanggar langgar yang diharamkan oleh Allah SWT. Adapun beberapa hal yang menyebabkan seseorang berkewajiban melaksanakan puasa kafarat diantaranya adalah \n\n1. Bersetubuh Siang Hari Pada Bulan Ramadhan. \n\n Orang yang bersetubuh di siang hari pada bulan puasa atau ramadhan, maka berkewajiban menggantikan puasanya puasa satu hari dan puasa kafarat sebagai penebus dari perbuatannya yakni selama dua bulan berturut-turut. \n\n Sebagaimana dalam sebuah Hadits Berikut: \n\n Dari Abu Hurairah ra bahwa ada seorang laki-laki bersebadan dengan istrinya pada siang hari di bulan Ramadhan, ia berkata kepada Rasulullah saw. Mengenai hal itu. maka bersabdalah beliau,”Apakah kamu mendapatkan seseorang budak perempuan?” Dia menjawab,”Tidak” Beliau bersabda”, Beliau bersabda,”Apakah kamu mampu berpuasa dua bulan berturut-turut?.” Dia menjawab,”Tidak” Beliau Bersabda,”Maka berilah makan enam puluh orang miskin.” (HR Muslim).",
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
